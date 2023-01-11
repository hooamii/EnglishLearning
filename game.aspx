<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="game.aspx.cs" Inherits="game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   <script src="JS/jquery-1.10.1.js"></script>
    <script src="JS/jquery-ui.min.js"></script>
    <script src="JS/gcode.js"></script>
     <div id="wrapper" class="wrapper">

        <div id="v-nav">
            <div class="arrow">
                <div id="up">
                    <img src="Image/upArrow.png" /></div>
                <div id="down">
                    <img src="Image/downArrow.png" /></div>
            </div>
            <ul class='tabs' id="vt">
                <li><a id="1" href='#'>میوه ها 1</a></li>
                <li><a id="2" href='#'>میوه ها 2</a></li>
                <li><a id="3" href='#'>حیوانات 1</a></li>
                <li><a id="4" href='#'>حیوانات 2</a></li>
                <li><a id="5" href='#'>حیوانات 3</a></li>
                <li><a id="6" href='#'>حیوانات 4</a></li>
                <li><a id="7" href='#'>حیوانات 5</a></li>
                <li><a id="8" href="#">حیوانات آبزی</a></li>
                <li><a id="9" href="#">پرندگان 1</a></li>
                <li><a id="10" href="#">پرندگان 2</a></li>
                <li><a id="11" href="#">پرندگان 3</a></li>
                <li><a id="12" href="#">حشرات</a></li>
            </ul>
        </div>
    <div id="h-nav">
        <ul class='htabs' id="ht">
            <li><a id="review" href='#' onclick="LoadLearn()">مرور لغات</a></li>
            <li><a href='#' onclick="LoadMemory()">بازی 1</a></li>
            <li><a href='#' onclick="LoadMatch()">بازی 2</a></li>
            <li><a href='#' onclick="LoadSpell()">بازی 3</a></li>
            <li><a href='#' onclick="LoadListen()">بازی 4</a></li>
        </ul>
    </div>
    <div class="tab-content">
        <div id="cContainer" style="height:100%; margin: 0; position: relative; width:100%; box-sizing: border-box; -moz-box-sizing: border-box;overflow:hidden;"></div>

    </div>

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
</asp:Content>

