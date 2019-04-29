<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookTicket.aspx.cs" Inherits="GUI_Layer.BookTicket"  MasterPageFile="~/Master.Master"%>

<asp:content id="content7" contentplaceholderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="cid_lbl" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="flight_id_lbl" runat="server" Text="Label"></asp:Label>
        <br />
        <div style="padding-left:40%;padding-bottom:15px; height: 30px;">
        <asp:Label ID="lblbookingdetails" runat="server" Text="Booking Details" BackColor="White" style="font-weight: 700; font-size: x-large;"></asp:Label>
        </div>
        <div style="background-image:url('images/pass.jpg');background-repeat:no-repeat; background-size:cover; height: 313px;">
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblcn" runat="server" Text="Customer Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcustname" runat="server" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblce" runat="server" Text="Customer Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcustemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lbladd" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lblphn" runat="server" Text="Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblbd" runat="server" Text="Birth Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbirthdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblfn" runat="server" Text="Flight Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbllf" runat="server" Text="Leaving From"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtleavefrom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblgt" runat="server" Text="Going To"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtgoingto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldd" runat="server" Text="Departure Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdepdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldt" runat="server" Text="Departure Time"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdeptime" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblfare" runat="server" Text="Fare"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfare" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;<asp:Label runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="lblnop" runat="server" Text="No Of passenger"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnop" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="lbltf" runat="server" Text="Total Fare"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txttf" runat="server"></asp:TextBox>

                </td>
            </tr>
        </table>
            </div>
    </div>
        <asp:Button ID="btnconfirm" runat="server" OnClick="btnconfirm_Click" style="text-align: center; margin-left: 580px; margin-top: 49px;" Text="Confirm Ticket" Height="36px" Width="100px" />
   </asp:content>
