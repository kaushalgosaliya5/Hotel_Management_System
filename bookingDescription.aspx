<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="bookingDescription.aspx.vb" Inherits="booking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <table style="width: 100%">
        <tr>
            <td colspan="0" rowspan="0" 
                style="width: 272px; vertical-align: top; text-align: left;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [V_Rooms] WHERE ([Room_Id] = @Room_Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Room_Id" QueryStringField="RID" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td rowspan="0" style="vertical-align: top; text-align: left; width: 441px;">
                <br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Room_Id" 
                    DataSourceID="SqlDataSource1" RepeatColumns="1">
                    <HeaderTemplate>
                        <asp:Image ID="Image1" runat="server" Height="189px" 
                            ImageUrl="~/images/Rooms/1.jpg" Width="256px" BorderColor="#CC0000" 
                            BorderStyle="Solid" BorderWidth="2px" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div style="text-align: center">
                            &nbsp;&nbsp;
                            <br />
                            &nbsp;Room No :
                            <asp:Label ID="Room_IdLabel" runat="server" Text='<%# Eval("Room_Id") %>' />
                            <br />
                            <br />
                            &nbsp; &nbsp;Capacity :
                            <asp:Label ID="CapacityLabel" runat="server" Text='<%# Eval("Capacity") %>' />
                            <br />
                            <br />
                            &nbsp;Price :
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            <br />
                            &nbsp;<br />Type&nbsp; :
                            <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                            <br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                </td>
            <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>


