<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="gallery.aspx.vb" Inherits="gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <table style="width: 100%; height: 15px">
        <tr>
            <td valign="top" colspan="0" rowspan="0" 
                style="vertical-align: text-top; text-align: right; width: 279px;">
              
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="12pt" 
                    style="text-decoration: none">&lt;&lt; Previous</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
            </td>
            <td valign="top" colspan="0" rowspan="0" 
                style="vertical-align: text-top; text-align: left; width: 331px;">
              
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="183px" Width="336px" 
                    ImageUrl="~/images/Gallery/1.jpg" BorderWidth="5px" />
              
            </td>
            <td valign="top" colspan="0" rowspan="0" 
                style="vertical-align: text-top; text-align: left">
              
            &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="12pt" 
                    style="text-decoration: none">Next &gt;&gt; </asp:LinkButton>
              
            </td>
        </tr>
        <tr>
            <td valign="top" 
                style="vertical-align: text-top; text-align: left; width: 279px; height: 11px;">
              
            </td>
            <td valign="top" 
                style="vertical-align: text-top; text-align: left; width: 331px; height: 11px;">
              
                &nbsp;</td>
            <td valign="top" 
                style="vertical-align: text-top; text-align: left; height: 11px;">
              
            </td>
        </tr>
        <tr>
            <td valign="top" colspan="3" style="vertical-align: text-top; text-align: left">
              
                <br />
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="7" Height="90px">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="91px" 
                            ImageUrl='<%# Eval("Name","~/Images/Gallery/{0}") %>' Width="110px" 
                            BorderStyle="Double" BorderWidth="5px" />
                        <br />
                        &nbsp;
                    </ItemTemplate>
                </asp:DataList>
                <br />
              
            </td>
        </tr>
    </table>
</asp:Content>

