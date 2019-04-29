<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="GUI_Layer.EditProfile" MasterPageFile="~/Master.Master" %>

<asp:content id="content4" contentplaceholderID="ContentPlaceHolder1" runat="server">

    <div>
    <h1 style="background-image:linear-gradient(brown,white);" class="auto-style3">&nbsp;Edit Profile</h1>
        <span style="padding-left:85%">
         
            <asp:Button ID="Button1" runat="server" Text="Logout" BackColor="White" BorderStyle="None" ForeColor="Blue" OnClick="Button1_Click1" />
        </span>
        
    </div>
    <div style="background-image:url('images/reg.jpg');background-repeat:no-repeat; background-size:cover;">
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Lblcid" runat="server" Text="customerId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtcustid" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="editname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="editemail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="editemail"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbladd" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="editaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblmob" runat="server" Text="Mobile number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="editmobno" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Number" style="color: #FF0000" ValidationExpression="^[7-9][0-9]{9}$" ControlToValidate="editmobno"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbldob" runat="server" Text="DOB"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="editdob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblgen" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="editGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="editpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Password" style="color: #FF0000" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}$" ControlToValidate="editpassword"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:left">
                    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Update Details" Height="29px" style="margin-left: 0px" Width="102px"/>
                </td>
            </tr>
        </table>
        </div>
 


</asp:content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 388px;
            width: 492px;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
