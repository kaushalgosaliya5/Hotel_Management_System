<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="false" CodeFile="FoodSelect.aspx.vb" Inherits="User_SelectFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table style="width: 100%">
        <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 188px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Food_Category]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="FCategory_Id" 
                    DataSourceID="SqlDataSource1" Width="151px">
                    <HeaderTemplate>
                        <div style="text-align: center">
                            <span style="font-size: large; font-weight: bold; text-decoration: underline; color: #800000">
                            Food Category</span></div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton5" runat="server" Text='<%# Eval("Name") %>' 
                            PostBackUrl='<%# Eval("FCategory_Id", "~/User/FoodSelectItems.aspx?FCAT={0}") %>'></asp:LinkButton>
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/restaurant.aspx" 
                    Text="Button" Visible="False" />
            </td>
            <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="FDelivery_Id,Food_Id" DataSourceID="SqlDataSource3" 
                    Width="523px" AllowPaging="True" AllowSorting="True" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Height="235px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="FDelivery_Id" HeaderText="FDelivery_Id" 
                            ReadOnly="True" SortExpression="FDelivery_Id" Visible="False" />
                        <asp:BoundField DataField="Food_Id" HeaderText="Food No" ReadOnly="True" 
                            SortExpression="Food_Id">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                            Font-Underline="True" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                            SortExpression="Name">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                            SortExpression="Quantity">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Expr1" HeaderText="Total (Rs.)" ReadOnly="True" 
                            SortExpression="Expr1">
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [V_FoodSelect] WHERE ([FDelivery_Id] = @FDelivery_Id)" 
                    DeleteCommand="DELETE FROM [Food_Delivery] WHERE [FDelivery_Id] = @FDelivery_Id AND [Food_Id] = @Food_Id" 
                    
                    InsertCommand="INSERT INTO [Food_Delivery] ([FDelivery_Id], [Food_Id], [Quantity], [Price]) VALUES (@FDelivery_Id, @Food_Id, @Quantity, @Price)" UpdateCommand="UPDATE [Food_Delivery] SET [Quantity] = @Quantity WHERE [FDelivery_Id] = @FDelivery_Id AND [Food_Id] = @Food_Id
">
                    <DeleteParameters>
                        <asp:Parameter Name="FDelivery_Id" />
                        <asp:Parameter Name="Food_Id" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FDelivery_Id" />
                        <asp:Parameter Name="Food_Id" />
                        <asp:Parameter Name="Quantity" />
                        <asp:Parameter Name="Price" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="FDelivery_Id" SessionField="FD" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Quantity" />
                        <asp:Parameter Name="FDelivery_Id" />
                        <asp:Parameter Name="Food_Id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" ForeColor="#990033" Text="   Make Payment" 
                    PostBackUrl="~/User/Payment.aspx" BorderColor="#CC0000" 
                    BorderStyle="Solid" BorderWidth="1px" Height="28px" Width="149px" />
                <br />
            </td>
        </tr>
    </table>
  
</asp:Content>

