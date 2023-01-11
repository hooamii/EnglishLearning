using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DSTableAdapters;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        loginTableAdapter ta=new loginTableAdapter();
        DS.loginDataTable dt=new DS.loginDataTable();
        ta.Fill(dt,UserNameTxt.Text,PassTxt.Text);
        if (dt.Rows.Count == 0)
        {
            upLbl.Visible = true;
        }
        else
        {
            DS.loginRow r;
            r = (DS.loginRow)dt.Rows[0];
            Session["UserName"] = r.UserName;
            Response.Redirect("Main.aspx", true);
        }
    }
    protected void RegisterBtn_Click(object sender, EventArgs e)
    {
        qta c = new qta();
        string s1 = c.UserQuery(TextBox1.Text);
        string s2 = c.EmailQuery(TextBox2.Text);
        if (s1 != null || s2!= null)
        {
            if (s1 != null)
            {
                pLbl.Text = "این نام کاربری وجود دارد،نام کاربری دیگری انتخاب کنید.";
            }
            else
            {
                pLbl.Text = "ایمیل وارد شده وجود دارد، اگر قبلا ثبت نام نموده اید برای ورود به سیستم نام کاربری و رمز خود را در در قسمت ورود به سیستم وارد کنید.";
            }
        }
        else
        {
            c.InsertUserQuery(TextBox1.Text,TextBox2.Text,TextBox3.Text);
            Session["UserName"] = TextBox1.Text;
            Session["Role"] = true;
            Response.Redirect("Main.aspx");
        }
       
           
       
    }
}