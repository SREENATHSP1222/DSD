<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerFacility.aspx.cs" Inherits="GUI_Layer.CustomerPage" masterpagefile="~/Master.Master"%>

<asp:content id="content6" contentplaceholderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheet1cf.css" rel="stylesheet" />
         <div class="image1">
    <h1 class="head1">You Are Looking For ? </h1>

        <p>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
             </p>
             <p>
            Welcome!!&nbsp;
                 <asp:Label ID="name_lbl" runat="server"></asp:Label>
             </p>
        <table style="text-align:center;">
            <tr>
                <td class="auto-style14">
                   
                    <asp:LinkButton ID="LinkButton1" runat="server" style="text-align: center; font-weight: 700; color: #0000FF; background-color: #FFFFFF;"  OnClick="LinkButton1_Click" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Underline="False" Height="29px" Width="142px">Search Flight</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">

                    <asp:LinkButton ID="LinkButton2" runat="server"  OnClick="LinkButton2_Click" BorderColor="Black" BorderWidth="3px" Font-Underline="False" Height="29px" style="text-align: center; font-weight: 700; margin-left: 0px; background-color: #FFFFFF;" Width="145px" PostBackUrl="~/Search Flight.aspx">Book Ticket</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                 <asp:LinkButton ID="LinkButton3" runat="server"  BorderColor="Black" BorderWidth="3px" Font-Underline="False" Height="29px" style="text-align: center; font-weight: 700; margin-left: 0px; background-color: #FFFFFF;" Width="144px" OnClick="LinkButton3_Click">Cancel Ticket</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" BorderColor="Black" BorderWidth="3px" Font-Underline="False" Height="29px" style="text-align: center; font-weight: 700; background-color: #FFFFFF;" Width="143px">Edit Profile</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Height="32px" style="font-weight: 700; margin-top: 0px" Width="136px" />
                </td>
            </tr>
        </table>
</div>
   
    </asp:content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="head">
  
</asp:Content>
