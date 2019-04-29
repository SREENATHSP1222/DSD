<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="GUI_Layer.CustomerRegistration" masterpagefile="~/Master.Master"%>

<asp:content id="content2" contentplaceholderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheetreg.css" rel="stylesheet" />
    <div class="auto-style7">
        <h2 class="auto-style1">Registration Form</h2>
    </div>
        <table class="table1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" style="font-size: medium; color: #000000" Text="Name"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtname" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtname" runat="server" ToolTip="Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" style="font-size: medium; color: #000000" Text="Email"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtemail" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email" ToolTip="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Correct Email" style="color: #FFFFFF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" style="font-size: medium; color: #000000" Text="Address"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtadd" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" ToolTip="Address"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" style="font-size: medium; color: #000000" Text="PhoneNO"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter correct Mobile Number" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" style="font-size: medium; color: #000000" Text="DOB"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtdob" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtdob" runat="server" TextMode="Date" ToolTip="Dateofbirth"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" style="font-size: medium; color: #000000" Text="Gender"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="gender" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="gender" runat="server" style="font-size: medium">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ToolTip="Password" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter correct  Password" style="color: #FFFFFF" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Save Details" OnClick="Button1_Click" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
   </asp:content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
   
</asp:Content>


