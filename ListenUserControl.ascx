<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ListenUserControl.ascx.cs" Inherits="ListenUserControl" %>
<div id="spellStart" style="font-family:myFont">
                <h2>دکمه ی start را برای شروع بازی فشار دهید.</h2>
                     
                <button onclick="game.start()" class="Btn">شروع</button>
          <h2>دستورالعمل</h2>
          <p>به صدای پخش شده به دقت گوش داده و لغت تلفظ شده را از بین عکس ها کلیک کنید<br />
              برای شنیدن دوباره ی صدا روب آیکون صدا کلیک نمایید
          </p>
            </div>
<div id="successMessage" style="font-family:myFont">
                <div id="message" style="position:relative;top:50px;font-size:larger;"></div>
    <br />
    <br />
                <button onclick="game.again()" style="position:relative;top:100px;" class="Btn">بازی دوباره</button>
            </div>
<div style="height: 100%; position: relative; width: 100%; box-sizing: border-box; -moz-box-sizing: border-box;padding-right:40px ">
<div style="width:420px;height:450px;position:relative;float:right;">
<table id="listenTable" style="background-color:#41ba77;width:100%;height:100%;border: 2px solid #0c8000;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;box-sizing:border-box;-moz-box-sizing:border-box;" >
    <tbody>
        <tr>
            <td></td>
            <td><div id="question" style="background-image:url(/Image/Sound.jpg); width:100%;height:100%;background-size:100% 100%;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;cursor:pointer"></div></td>
            <td></td>
        </tr>
        <tr>
            <td ><div class="selectOption"></div></td>
            <td ><div class="selectOption"></div></td>
            <td><div class="selectOption"></div></td>
        </tr>
        <tr>
            <td><div class="selectOption"></div></td>
            <td><div class="selectOption"></div></td>
            <td><div class="selectOption"></div></td>
        </tr>
    </tbody>
</table>
    </div>
<div style="width:150px; height:452px;position:relative;float:right;background-color:#75c061;margin-right:5px;border: 2px solid #0c8000;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;box-sizing:border-box;-moz-box-sizing:border-box;">
    <div id="box_timer" style="border:4px solid #fcff00;position:relative;top:30px;width:100px;height:50px;text-align:center;line-height:50px;margin:auto;font-size:large"></div>
    <div id="pairs" style="position:relative;top:90px;width:130px;height:200px;margin:auto;font-size:large;font-family:myFont">
هرانتخاب صحیح :
       <p style="text-align:center;width:100%;font-weight:500;color:green">+30 امتیاز  </p> 
        <br />
        <br />
         هر انتخاب غلط :
        <p style="text-align:center;width:100%;font-weight:500;color:red;"> -10 امتیاز</p>
        <br />
        <br />
        <br />
      <%--  امتیاز:
        <div id="scores" style="text-align:center;width:100%;font-weight:500;"></div>--%> 
    </div>
</div>
    </div>
<audio id="gotIt"  preload="auto" >
    <source src="Audio/game-sound-correct.mp3" type="audio/mp3" />
    <source  src="Audio/game-sound-correct.ogg" type="audio/ogg"/>
</audio>