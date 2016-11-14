<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="restaurant.aspx.vb" Inherits="restaurant" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 96%; height: 342px;">
        <tr>
            <td colspan="0" rowspan="0" 
                
                
                
                
                style="vertical-align: top; text-align: left; width: 219px; height: 342px;">
                <br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="FCategory_Id" 
                    DataSourceID="SqlDataSource1" Width="189px" Height="284px" 
                    Font-Bold="True" Font-Size="10pt">
                    <HeaderTemplate>
                        <div style="text-align: center">
                            <span style="font-size: large; color: #FF0000; text-align: center;">
                            <br />
                            Food Cateogory<br />
                            <br />
                            </span></div>
                    </HeaderTemplate>
                    <ItemTemplate>
&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton4" runat="server" 
                            PostBackUrl='<%# Eval("FCategory_Id","~/restaurantFood.aspx?FCID={0}") %>' 
                            Text='<%# Eval("Name") %>' Font-Size="12pt" ForeColor="Black" ></asp:LinkButton>
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Food_Category]"></asp:SqlDataSource>
                
            </td>
            <td rowspan="0" 
                
                
                
                style="vertical-align: top; text-align: left; width: 326px; height: 342px;">
                &nbsp;<b><span style="font-size: large; color: #FF0000; text-decoration: underline">
                <br />
               
                </span><span style="font-size: large; color: #FF0000; ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
               
                </span>
                <span style="font-size: x-large; color: #FF0000; text-decoration: underline;">
                Special Offer<br />
               
                </span>
                <span style="font-size: large; color: #FF0000; font-style: italic;">
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="O_ID" DataSourceID="SqlDataSource2" Width="534px" 
                    AllowPaging="True" AllowSorting="True" Font-Size="12pt" CellPadding="4" 
                    Font-Bold="False" Font-Italic="False" ForeColor="#333333" GridLines="None" 
                    Height="235px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="O_ID" HeaderText="Offer No" ReadOnly="True" 
                            SortExpression="O_ID" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Discount" HeaderText="Discount" 
                            SortExpression="Discount" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="New Price" HeaderText="New Price" ReadOnly="True" 
                            SortExpression="New Price" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <br />
              
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/restaurantDeliver.aspx" 
                    Text="Make Order" Width="161px" Height="26px" Font-Underline="False" />
               
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [V_Offers]"></asp:SqlDataSource>
               
                </span></b>
                </td>
            <td rowspan="0" style="vertical-align: top; text-align: left; height: 342px;">
                <br />
                <br />
&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

