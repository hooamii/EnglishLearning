<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemoryUserControl.ascx.cs" Inherits="MatchUserControl" %>
<div id="successMessage" style="font-family:myFont">
                <div id="message" style="position:relative;top:50px;font-size:larger;"></div>
    <br />
    <br />
                <button onclick="game.again()" style="position:relative;top:100px;" class="Btn">بازی دوباره</button>
            </div>
<div id="spellStart" style="font-family:myFont">
                <h2>دکمه ی start را برای شروع بازی فشار دهید.</h2>
                <button onclick="game.start()" class="Btn">شروع</button>
     <h2>دستورالعمل</h2>
          <p>در این بازی 16 کارت وجود دارد،8 تای آنها شامل تصویر و 8تای دیگر شامل لغات  <br />
               آن عکس ها می باشند . روی دو کارت پشت سر هم کلیک کنید تا باز شوند اگر آنها <br />
              شامل لغت و تصویر مربوط بهم بودند باز می مانند. آنقدر تلاش کنید تا همه ی کارتها باز شوند.  
              
          </p>
            </div>
<div style="height: 100%; position: relative; width: 100%; box-sizing: border-box; -moz-box-sizing: border-box;padding-right:30px;">
<div style="width:456px; height:450px;position:relative;float:right;">
    <table style="table-layout:fixed;border-spacing:10px;width:100%;height:100%;background-color: #75c061;border: 2px solid #0c8000;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;box-sizing:border-box;-moz-box-sizing:border-box;">
        <tr>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
        </tr>
        <tr>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
        </tr>
        <tr>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
        </tr>
        <tr>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
            <td class="cPlace"></td>
        </tr>
    </table>
     <audio id="aud" src="Audio/yes!.mp3"></audio>
</div>
<div style="width:150px; height:450px;position:relative;float:right;background-color:#75c061;margin-right:5px;border: 2px solid #0c8000;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;box-sizing:border-box;-moz-box-sizing:border-box;">
    <div id="box_timer" style="border:4px solid #fcff00;position:relative;top:30px;width:100px;height:50px;text-align:center;line-height:50px;margin:auto;font-size:large"></div>
    <div id="pairs" style="position:relative;top:90px;width:130px;height:200px;margin:auto;font-size:large;font-family:myFont">
هرجفت صحیح :
       <p style="text-align:center;width:100%;font-weight:500;color:green">+30 امتیاز  </p> 
        <br />
        <br />
         هر جفت غلط :
        <p style="text-align:center;width:100%;font-weight:500;color:red;"> -10 امتیاز</p>
        <br />
        <br />
        <br />
        <%--امتیاز:
        <div id="scores" style="text-align:center;width:100%;font-weight:500;"></div> --%>
    </div>
</div>
    </div>