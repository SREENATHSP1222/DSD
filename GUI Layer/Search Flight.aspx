<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search Flight.aspx.cs" Inherits="GUI_Layer.Search_Flight"  MasterPageFile="~/Master.Master"%>

<asp:content id="content5" contentplaceholderID="ContentPlaceHolder1" runat="server">
    

    <div>
         <h1 style="text-align: center; color: #FFFFFF; background-image:linear-gradient(white,purple)"> Search Flight </h1>
         <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
      
        <span style="padding-left:80%;">
      
            <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" /></span>

    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblsource" runat="server" Text="Source"></asp:Label>
                </td>
                <td class="auto-style10">

        <asp:TextBox ID="Txtsource" runat="server"></asp:TextBox>
        
      
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
        
      
        <asp:Label ID="lbldestination" runat="server" Text="Destination"></asp:Label>

                </td>
                <td class="auto-style10">

        <asp:TextBox ID="Txtdestination" runat="server"></asp:TextBox>
      
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
      
        <asp:Label ID="lbldate" runat="server" Text="Date"></asp:Label>

                </td>
                <td class="auto-style8">

        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
       

                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblseat" runat="server" Text="Number of Seats"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlseatlist" runat="server" OnSelectedIndexChanged="ddlseatlist_SelectedIndexChanged">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                        <asp:ListItem Value="13"></asp:ListItem>
                        <asp:ListItem Value="14"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="16"></asp:ListItem>
                        <asp:ListItem Value="17"></asp:ListItem>
                        <asp:ListItem Value="18"></asp:ListItem>
                        <asp:ListItem Value="19"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center" class="auto-style11">
       

        <asp:Button ID="Button2" runat="server" Text="Show Flights" OnClick="Button2_Click" style="text-align: center" />
  
                </td>
            </tr>
    </table>
  
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FlightNumber" DataSourceID="SqlDataSource3" ShowHeaderWhenEmpty="True" EmptyDataText="No Flights Available">
        <Columns>
            <asp:BoundField DataField="FlightNumber" HeaderText="Flight Number" ReadOnly="True" SortExpression="FlightNumber" />
            <asp:BoundField DataField="FlightName" HeaderText="Flight Name" SortExpression="FlightName" />
            <asp:BoundField DataField="LeavingFrom" HeaderText="Leaving From" SortExpression="LeavingFrom" />
            <asp:BoundField DataField="Goingto" HeaderText="Going To" SortExpression="Goingto" />
            <asp:BoundField DataField="DepartureDate" HeaderText="Departure Date" SortExpression="DepartureDate" />
            <asp:BoundField DataField="DepartureTime" HeaderText="Departure Time" SortExpression="DepartureTime" />
            <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
            <asp:HyperLinkField DataNavigateUrlFields="FlightNumber" DataNavigateUrlFormatString="BookTicket.aspx?FlightNumber={0}" HeaderText="Book Now" Text="BookNow" />
        </Columns>
    </asp:GridView>
   
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AirTicketReservationSystemConnectionString %>" SelectCommand="SELECT * FROM [Flight Details] WHERE (([DepartureDate] = @DepartureDate) AND ([Goingto] = @Goingto) AND ([LeavingFrom] = @LeavingFrom))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="DepartureDate" PropertyName="Text" />
            <asp:ControlParameter ControlID="Txtdestination" Name="Goingto" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Txtsource" Name="LeavingFrom" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirTicketReservationSystemConnectionString %>" SelectCommand="SELECT * FROM [Flight Details]"></asp:SqlDataSource>
   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AirTicketReservationSystemConnectionString %>" SelectCommand="searchflight" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="Txtsource" Name="source" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Txtdestination" Name="destination" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDate" DbType="Date" Name="date" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
 
  
   </asp:content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 230px;
        }
        .auto-style5 {
            text-align: right;
            height: 71px;
        }
        .auto-style6 {
            height: 71px;
        }
        .auto-style7 {
            text-align: right;
            height: 79px;
        }
        .auto-style8 {
            height: 79px;
        }
        .auto-style9 {
            text-align: right;
            height: 70px;
        }
        .auto-style10 {
            height: 70px;
        }
        .auto-style11 {
            height: 54px;
        }
    </style>
</asp:Content>
