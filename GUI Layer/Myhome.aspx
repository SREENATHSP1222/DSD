 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myhome.aspx.cs" Inherits="GUI_Layer.Myhome" masterpagefile="~/Master.Master"%>

  <asp:content id="content1" contentplaceholderID="ContentPlaceHolder1" runat="server">
      <link href="StyleSheethome.css" rel="stylesheet" />
      <div class="maindiv">
        <h1 class="h1"> <span class="auto-style2">Welcome To Sky AirLines</span></h1>
        <br class="auto-style5" />
        <span class="auto-style5"></span><span class="auto-style4"> </span><strong><span style="padding-left:30%;">“Traveling the globe, making dreams come true”</span><br class="auto-style6" />
        <span style="padding-left:33%">Fly Anywhere, Anytime</span></strong>
      
      
        <div class="div2">
<asp:LinkButton ID="LinkButton1" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="Black" Height="31px" PostBackUrl="~/CustomerRegistration.aspx" style="margin-left: 25px; text-align: center; margin-bottom: 22px; background-color: #FFFFFF;" Width="223px" OnClick="LinkButton1_Click">New User? Register Here</asp:LinkButton>
        </div>
            <div class="div3">
        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="Black" Height="32px" OnClick="LinkButton2_Click" PostBackUrl="~/Login.aspx" Width="224px">Already User? Login Here</asp:LinkButton>
            </div>
    
        </div>
   
      </asp:content> 