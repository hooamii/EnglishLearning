using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.IO;
using DSTableAdapters;
using System.Data;
using System.Data.SqlClient;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.aspx");
           
        }
        else
        {
            WelcomeLbl.Text = " خوش آمدید " + Session["UserName"].ToString();
        }
    }
    [WebMethod]
    public static string LoadUserControl(string WhichUserControl)
    {
        using (Page page = new Page())
        {
            UserControl userControl = (UserControl)page.LoadControl(WhichUserControl);

            page.Controls.Add(userControl);
            using (StringWriter writer = new StringWriter())
            {
                page.Controls.Add(userControl);
                HttpContext.Current.Server.Execute(page, writer, false);
                return writer.ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }

    [WebMethod]
    public static string GetScores(string GroupNo, string GameNo, string FinalScore)
    {
        string SAvg,MaS,MiS;
        int playCount;
        score s;
        qta c = new qta();
        GetUserGameGroupTableAdapter ta = new GetUserGameGroupTableAdapter();
        DS.GetUserGameGroupDataTable dt = new DS.GetUserGameGroupDataTable();
        ta.Fill(dt, Convert.ToInt32(GameNo), Convert.ToInt64(GroupNo), HttpContext.Current.Session["UserName"].ToString());
        if (dt.Rows.Count == 0)
        {
            playCount = 1;
            c.InsertGameUserQuery(Convert.ToInt32(GameNo), Convert.ToInt64(GroupNo), HttpContext.Current.Session["UserName"].ToString(), Convert.ToInt32(FinalScore), Convert.ToInt32(FinalScore), Convert.ToInt32(FinalScore), playCount);
            SAvg = "-";
            MaS = "-";
            MiS = "-";
           
        }
        else
        {
            DS.GetUserGameGroupRow r;
            r = (DS.GetUserGameGroupRow)dt.Rows[0];
            
            if (r.MaxScore < Convert.ToInt32(FinalScore))
            {
                MaS = FinalScore;
                MiS = r.MinScore.ToString();
            }
            else
            {
                MaS = r.MaxScore.ToString();
                if (r.MinScore > Convert.ToInt32(FinalScore))
                {
                    MiS = FinalScore;
                }
                else
                {
                    MiS = r.MinScore.ToString();
                }
            }
           int avg = r.ScoresAvg;
           SAvg = avg.ToString();
            playCount = r.PlayCount;
            avg = (avg * playCount + Convert.ToInt32(FinalScore)) / ++playCount;
            c.UpdateGameUserQuery(avg, Convert.ToInt32(MaS), Convert.ToInt32(MiS), playCount, Convert.ToInt32(GameNo), Convert.ToInt64(GroupNo), HttpContext.Current.Session["UserName"].ToString());
            MiS = r.MinScore.ToString();
            MaS = r.MaxScore.ToString();
        }
        System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        s = new score(SAvg, playCount.ToString(), MaS, MiS);
        return serializer.Serialize(s);
    }
    [WebMethod]
    public static string GetGozaresh()
    {
        GozareshTableAdapter ta = new GozareshTableAdapter();
        DS.GozareshDtDataTable dt = new DS.GozareshDtDataTable();
        ta.Fill(dt, HttpContext.Current.Session["UserName"].ToString());
        return GetJson2(dt);
    }
    public static string GetJson2(DataTable dt)
    {
        System.Web.Script.Serialization.JavaScriptSerializer serializer = new

        System.Web.Script.Serialization.JavaScriptSerializer();
        Dictionary<string, object> rows = null;
        List<object> row = new List<object>();
        foreach (DataRow dr in dt.Rows)
        {
            rows = new Dictionary<string, object>();

            foreach (DataColumn col in dt.Columns)
            {
                rows.Add(col.ColumnName.Trim(), dr[col]);
            }
            row.Add(rows);

        }
        return serializer.Serialize(row);
    }
    

}
public class score
{
    public score(string savg,string pc,string MaxSc,string MinSc){
        ScoresAvg = savg;
        playCount = pc;
        MaxS = MaxSc;
        MinS = MinSc;
    }
    public string ScoresAvg { get; set; }
     public string playCount { get; set; }
     public string MaxS {get; set; }
     public string MinS {get; set; }
}
