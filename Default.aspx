<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="position:relative;width:100%;">
         <div id="description"  >
        به سایت learningjoy خوش آمدید. سایت ما برای حفظ لغات زبان انگلیسی به روشی آسان و تفریحی به شما کمک می کند. در این سایت از عکس ها، صداها و بازی ها برای لذت بخش نمودن یادگیری استفاده شده است. برای
        ورود به سیستم یادگیری باید عضو سایت باشید. ثبت نام در این سایت ساده و رایگان می باشد.
        <br />
        نظرات، پیشنهادات و سوالات خود را از طریق ایمیل زیر با ما در میان بگذارید:
        <br /><p> ایمیل : ftaghizad88@gmail.com</p>       
    </div>
        
    <div class="RegLog"> 
<table style="border:solid 2px #ff6a00; background-color:#ffd300;width:250px;height:150px;" >
    <tbody>
        <tr><td colspan="2" style="text-align:center">ورود به سیستم<hr style="border:solid 1px #ff6a00" /></td></tr>
        <tr><td>نام کاربری :</td><td>
            <asp:TextBox ID="UserNameTxt" runat="server"></asp:TextBox></td></tr>
        <tr><td>رمز ورود :</td><td>
            <asp:TextBox ID="PassTxt" runat="server" TextMode="Password"></asp:TextBox></td></tr>
        <tr><td colspan="2" style="text-align:center">
            <asp:Button ID="LoginBtn" runat="server" Text="ورود" OnClick="LoginBtn_Click" CssClass="Btn" /></td></tr>
    </tbody>
</table>
        <br />
        <asp:Label ID="upLbl" runat="server" Text="نام کاربری یا رمز شما اشتباه است" Visible="False" ForeColor="Red"></asp:Label>  
        </div>
    <div class="RegLog"> 
<table style="border:solid 2px #ff6a00; background-color:#ffd300;width:300px;height:300px;" >
    <tbody>
         <tr><td colspan="2" style="text-align:center">ثبت نام<hr style="border:solid 1px #ff6a00" /></td></tr>
        <tr> <td>نام کاربری :</td><td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="RegisterG"></asp:RequiredFieldValidator>
            </td></tr>
        <tr> <td>آدرس ایمیل :</td><td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="RegisterG"></asp:RequiredFieldValidator>
            </td></tr>
        <tr> <td>رمز ورود :</td><td> <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" ValidationGroup="RegisterG"></asp:RequiredFieldValidator>
            </td></tr>
        <tr> <td>تکرار رمز ورود :</td>
            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" ValidationGroup="RegisterG"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td colspan="2" style="text-align:center">
            <asp:Button ID="RegisterBtn" runat="server" Text="ثبت نام" OnClick="RegisterBtn_Click" ValidationGroup="RegisterG" CssClass="Btn" /></td></tr>
    </tbody>
</table>
        <br />
        <asp:Label ID="pLbl" runat="server"  ForeColor="Red"></asp:Label>  
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="رمزهای وارده یکسان نیستند" ForeColor="Red" ValidationGroup="RegisterG"></asp:CompareValidator>
&nbsp;&nbsp;
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="آدرس ایمیل وارده صحیح نمی باشد." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RegisterG"></asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="رمز شما حداقل باید دارای 6 کاراکتر باشد" ForeColor="Red" ValidationExpression="^(?:.{6,}|)$" ValidationGroup="RegisterG"></asp:RegularExpressionValidator>
        </div>
   <div style="width:100%; height:50px;"></div>
        </div>
</asp:Content>


