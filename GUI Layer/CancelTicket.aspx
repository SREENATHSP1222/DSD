<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelTicket.aspx.cs" Inherits="GUI_Layer.Cancel_Ticket" MasterPageFile="~/Master.Master" %>

<asp:content id="content8" contentplaceholderID="ContentPlaceHolder1" runat="server">
    <div>
     <h1 style="color: #000000; background-image:linear-gradient(red,white); width: 100%;" class="auto-style1"> Cancel Ticket</h1>
        <asp:Label ID="flightid" runat="server" style="text-align: left" Text="Label"></asp:Label>
     <h3 style="text-align: left; color: #FF0000; background-color: #FFFFFF; text-align:center; height: 53px; width: 100%;">Are You Sure you want to cancel the ticket ? </h3>
    </div>
        <div style="text-align:center;padding-bottom:30px; height: 56px; width: 100%;">
        <asp:Label ID="lblbid" runat="server" Text="Booking ID"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtbid" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblflightno" runat="server" Text="FlightNumber"></asp:Label>
            <asp:TextBox ID="txtflightno" runat="server"></asp:TextBox>
    </div>
        <div style="text-align:center; height: 226px; width: 100%;">
            <span style="padding-right:30px;">
            <asp:Button ID="btnyes" runat="server" OnClick="Button1_Click" Text="Yes" Height="46px" style="margin-left: 0px;" Width="47px"/>
            </span>
            <asp:Button ID="btnno" runat="server" OnClick="Button2_Click" PostBackUrl="~/CustomerFacility.aspx" Text="No" Height="45px" style="margin-left: 0px" Width="44px" />
            <br />
            </div>
   </asp:content >
<asp:Content ID="Content9" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>

