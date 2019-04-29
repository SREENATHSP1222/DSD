<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GUI_Layer.Login" masterpagefile="~/Master.Master"%>


<asp:content id="content3" contentplaceholderID="ContentPlaceHolder1" runat="server">
    


 

    <div>

     <h1 style="text-align: center; color: #FF9999;background-image:linear-gradient(orange,purple); background-color: #FF0066;"> Login </h1>
    </div>
        <div style="text-align: center; height: 429px;" class="auto-style1">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">
            <asp:Label ID="Label1" runat="server" Text="CustomerID "></asp:Label>
                    </td>
                    <td class="auto-style8">
          <asp:TextBox ID="userid" runat="server" ToolTip="CustomerID" Width="119px" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
         
            <asp:Label ID="Label2" runat="server" style="text-align: center" Text="Password"></asp:Label>
          
                    </td>
                    <td class="auto-style2">
          
            <asp:TextBox ID="loginpassword" runat="server" TextMode="Password" style="margin-left: 2px" Width="118px" ToolTip="Password"></asp:TextBox></td>
                </tr>
            </table>
            <br/>
         
            <br />
           
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Height="42px" Width="63px" />
    
          
        </div>




    </asp:content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-image:url('images/2.jpg');
            background-repeat:no-repeat;
             background-size:cover;
        }
        .auto-style2 {
            width: 335px;
            text-align: left;
        }
        .auto-style4 {
            width: 88px;
            text-align: right;
        }
        .auto-style5 {
            width: 221px;
        }
        .auto-style6 {
            width: 221px;
            height: 26px;
        }
        .auto-style7 {
            width: 88px;
            text-align: right;
            height: 26px;
        }
        .auto-style8 {
            width: 335px;
            text-align: left;
            height: 26px;
        }
    </style>
</asp:Content>


