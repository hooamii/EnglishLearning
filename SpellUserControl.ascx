<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SpellUserControl.ascx.cs" Inherits="SpellUserControl" %>
  <div id="spellStart" style="font-family:myFont">
                <h2>دکمه ی start را برای شروع بازی فشار دهید.</h2>
                <button onclick="game.start()" class="Btn">شروع</button>
       <h2>دستورالعمل</h2>
          <p>به عکس موجود در گوشه ی پایین سمت راست نگاه کرده <br />
              و روی بادکنک های حاوی حروف لغت آن عکس <br />
              به ترتیب کلیک نمایید تا آن حروف <br />
              در جای خود قرار گیرند.
              
          </p>
            </div>
<div id="successMessage" style="font-family:myFont">
                <div id="message" style="position:relative;top:50px;font-size:larger;"></div>
    <br />
    <br />
                <button onclick="game.again()" style="position:relative;top:100px;" class="Btn">بازی دوباره</button>
            </div>
<div style="height: 100%; position: relative; width: 100%; box-sizing: border-box; -moz-box-sizing: border-box;padding-right:50px;">
<div style="width:420px; height:450px;position:relative;float:right;">
<div style="border: 3px solid #b200ff; background-color: #e080ee; position: relative; width:414px; height:444px;border-radius: 5px">
     
         <div id="balloon" style="padding: 0px; border-style: hidden; border-width: 1px; width: 400px; height: 100%; background-image: url('Image/hintergruende-0017.jpg'); background-repeat: no-repeat; background-size: 100% 100%; position: relative; margin: auto">
           
            <span style="border-width: 0px; border-style: none; width: 100%; background-color: #e080ee; top: 0px; border-radius: 0px; height: 80px; display: block; position: absolute; z-index: 2; padding: 0px; cursor: auto;"></span>
            <span style="text-align:center; width:100%; background-color: #e080ee; bottom:0px;box-sizing:border-box;-moz-box-sizing:border-box;height: 80px; display: block; position: absolute; z-index: 2; padding: 0px; cursor: auto;">
                <span id="spelling" dir="ltr" style="color: #000000; font-family: Arial; font-size: 24px; font-weight: bold; text-align: center; letter-spacing: 6px; line-height: 30px; position: relative; top: 20px;"></span>
                <img src="#" id="Which" style="margin: 2px; border: 2px solid #000000; height: 72px; position: absolute; border-radius: 5px; right: 5px" />
            </span>
        </div>
    </div>
    </div>

<div style="width:150px; height:450px;position:relative;float:right;background-color:#e080ee;margin-right:5px;border: 2px solid #b200ff;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;box-sizing:border-box;-moz-box-sizing:border-box;">
    <div id="box_timer" style="border:4px solid #fcff00;position:relative;width:90px;height:50px;text-align:center;line-height:50px;margin:10px auto auto;font-size:large;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;"></div>
    <div id="pairs" style="position:relative;width:130px;height:200px;margin:40px auto auto;font-size:large;font-family:myFont">
هر بادکنک درست:
       <p style="text-align:center;width:100%;font-weight:500;color:green">30+ امتیاز  </p> 
        <br />

         هر بادکنک اشتباه:
        <p style="text-align:center;width:100%;font-weight:500;color:red;"> 10- امتیاز</p>
        <br />
  
        <%--امتیاز:
        <div id="scores" style="text-align:center;width:100%;font-weight:500;"></div> --%>
  
    </div>
   
    <button id="next" style="border:2px solid #5800ff;position:relative;margin:30px 20px auto auto;width:40px;height:30px;text-align:center;line-height:20px;font-size:large;background-color:#6800ff;color:#fff;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;cursor:pointer;float:right;" onclick="game.next()">بعدی</button>
    <button id="previous" style="border:2px solid #5800ff;position:relative;margin:30px 20px auto auto;width:40px;height:30px;text-align:center;line-height:20px;font-size:large;background-color:#6800ff;color:#fff;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;cursor:pointer;float:right;" onclick="game.previous()">قبلی</button>
    <div id="index" style="position:relative;margin:20px 40px;width:70px;height:30px;text-align:center;line-height:20px;font-size:large;"></div>
    <button style="border:2px solid #f00;position:relative;margin:30px 20px;width:100px;height:30px;text-align:center;line-height:20px;font-size:large;background-color:#ff6a00;color:#fff;border-radius:10PX; -moz-border-radius: 10px;-webkit-border-radius: 10px;cursor:pointer;" onclick="game.reset()">شروع مجدد</button>
</div>
 </div>
             <audio id="pop" src="Audio/ballonPop.mp3"></audio>
            <audio id="finish" src="Audio/yes!.mp3"></audio>