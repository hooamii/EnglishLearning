<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MatchUserControl.ascx.cs" Inherits="MatchUserControl" %>
<div id="spellStart" style="font-family:myFont">
                <h2>دکمه ی start را برای شروع بازی فشار دهید.</h2>
                <button onclick="game.start()" class="Btn">شروع</button>
    <h2>دستورالعمل</h2>
          <p>لغات موجود در حعبه ی پایین را به جای خالی <br />
              در زیر عکس مربوطه اش درگ و دراپ نمایید
              
          </p>
            </div>
<div id="successMessage">
    <div id="message" style="position:relative;top:50px;font-size:larger;font-family:myFont"></div>
               <br />
               <br />
                <button onclick="game.again()"  style="position:relative;top:100px;" class="Btn">بازی دوباره</button>
            </div>
<div id="content" style="width: 545px; height: 450px;position:relative;float:right;">
     
    <audio id="wrong" src="Audio/Wrong_Answer.mp3"></audio>
    <audio id="correct" src="Audio/yes!.mp3"></audio>
    <table style="width:100%; border-spacing:8px;background-color:#e85292;border:2px solid #ff00dc;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;box-sizing:border-box;-moz-box-sizing:border-box;">
        <tr>
            <td class="cardSlot"></td>
            <td class="cardSlot"></td>
            <td class="cardSlot"></td>
            <td class="cardSlot"></td>
        </tr>
        <tr>
            <td class="cardSlot"></td>
            <td class="cardSlot"></td>
            <td class="cardSlot"></td>
            <td class="cardSlot"></td>
        </tr>
    </table>
    <div id="cardPile">
    </div>
    
</div>
<div style="width:120px; height:450px;position:relative;float:right;background-color:#e85292;border:2px solid #ff00dc;border-radius:10px; -moz-border-radius: 10px;-webkit-border-radius: 10px;margin-right:5px;box-sizing:border-box;-moz-box-sizing:border-box;">
<div id="box_timer" style="border:4px solid #fcff00;position:relative;top:30px;width:100px;height:50px;text-align:center;line-height:50px;margin:auto;font-size:large"></div>
<div id="pairs" style="position:relative;top:90px;width:100px;height:200px;margin:auto;font-size:large;font-family:myFont">
هر جایگذاری صحیح :
       <p style="text-align:center;width:100%;font-weight:500;color:green">+30 امتیاز  </p> 
        <br />
        <br />
         هر جایگذاری غلط :
        <p style="text-align:center;width:100%;font-weight:500;color:red;"> -10 امتیاز</p>
        <br />
        <br />
        <br />
       <%-- امتیاز:
        <div id="scores" style="text-align:center;width:100%;font-weight:500;"></div> --%>
    </div>
</div>
