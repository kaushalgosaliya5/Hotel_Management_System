<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 219px">
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="89px" 
                    Width="178px">
                    <asp:ListItem> Food</asp:ListItem>
                    <asp:ListItem> Room</asp:ListItem>
                    <asp:ListItem> Feedback</asp:ListItem>
                    <asp:ListItem> Food Delivery</asp:ListItem>
                    <asp:ListItem> Room Booking</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="34px" Text="View Report" 
                    Width="134px" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

