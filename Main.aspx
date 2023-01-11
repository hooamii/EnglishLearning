<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html dir="rtl"  xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learn English With Game</title>
    <link href="CSS/main.css" rel="stylesheet" />
    <script src="JS/jquery-1.10.1.js"></script>
    <script src="JS/jquery-ui.min.js"></script>
    <script src="JS/jquery-jtemplates.js"></script>
    <script src="JS/gcode.js"></script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
         <div class="content-wrapper">
             
             <div class="float-left">
                
             <asp:Label ID="WelcomeLbl" runat="server" ForeColor="Black" Font-Size="Small"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:Button ID="LogoutBtn" runat="server" Text="خروج" OnClick="Button1_Click" CssClass="Btn"  />
            </div>  
        
       </div>
    </div>
        </form>
    <div id="wrapper" class="wrapper">

        <div id="v-nav">
            <div class="arrow">
                <div id="up">
                    <img id="iup" src="Image/upArrow.png" /></div>
                <div id="down">
                    <img id="idown" src="Image/downArrow.png" /></div>
            </div>
            <ul class='tabs' id="vt">
                <li><a  href='#' data-GroupNo="1">حیوانات 1</a></li>
                <li><a  href='#' data-GroupNo="2">حیوانات 2</a></li>
                <li><a  href='#' data-GroupNo="3">حیوانات 3</a></li>
                <li><a  href='#' data-GroupNo="4">حیوانات 4</a></li>
                <li><a  href='#' data-GroupNo="5">حیوانات 5</a></li>
                <li><a  href='#' data-GroupNo="6">حیوانات آبزی</a></li>
                <li><a  href='#' data-GroupNo="7">میوه ها 1</a></li>
                <li><a  href="#" data-GroupNo="8"> میوه ها 2</a></li>
                <li><a  href="#" data-GroupNo="9">پرندگان 1</a></li>
                <li><a  href="#" data-GroupNo="10">پرندگان 2</a></li>
                <li><a  href="#" data-GroupNo="11">پرندگان 3</a></li>
                <li><a  href="#" data-GroupNo="12">حشرات</a></li>
            </ul>
        </div>
    <div id="h-nav">
        <ul class='htabs' id="ht">
            <li><a id="review" href='#' onclick="LoadLearn()">مرور لغات</a></li>
            <li><a href='#' data-GameNo="1" onclick="LoadMemory()">بازی 1</a></li>
            <li><a href='#' data-GameNo="2" onclick="LoadMatch()">بازی 2</a></li>
            <li><a href='#' data-GameNo="3" onclick="LoadSpell()">بازی 3</a></li>
            <li><a href='#' data-GameNo="4" onclick="LoadListen()">بازی 4</a></li>
            <li><a href='#' data-GameNo="5" onclick="LoadAmar()">آمار</a></li>
        </ul>
    </div>
    <div class="tab-content">
        <div id="cContainer" style="height:100%; margin: 0; position: relative; width:100%; box-sizing: border-box; -moz-box-sizing: border-box;overflow:hidden;text-align:center;"></div>

    </div>

    </div>
    <div id="footer">
        <p>copyright©2013 Fatemeh Taghizad<br />
All rights reserved
</p>
    </div>

    <div id="audioDiv">

        <audio id="a0" preload="auto">
            <source id="s0"><source />
        </audio>
        <audio id="a1" preload="auto">
            <source id="s1"><source />
        </audio>
        <audio id="a2" preload="auto">
            <source id="s2"><source />
        </audio>
        <audio id="a3" preload="auto">
            <source id="s3"><source />
        </audio>
        <audio id="a4" preload="auto">
            <source id="s4"><source />
        </audio>
        <audio id="a5" preload="auto">
            <source id="s5"><source />
        </audio>
        <audio id="a6" preload="auto">
            <source id="s6"><source />
        </audio>
        <audio id="a7" preload="auto">
            <source id="s7"><source />
        </audio>

    </div>

</body>
</html>
