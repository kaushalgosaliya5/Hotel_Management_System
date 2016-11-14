<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="FoodOrder.aspx.vb" Inherits="Admin_Room_Food" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="width: 100%; vertical-align: top; text-align: left;">
        <tr>
            <td>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="vertical-align: top; text-align: left;" rowspan="0">
                            &nbsp;</td>
                        <td style="vertical-align: top; text-align: left;" colspan="0" rowspan="0">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Order No :
                            <asp:TextBox ID="TextBox5" runat="server" Height="21px" Width="57px"></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Date :
                            <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="123px">03/04/2015</asp:TextBox>
                            <cc1:calendarextender ID="TextBox4_CalendarExtender" runat="server" 
                                Format="dd-MM-yyyy" TargetControlID="TextBox4" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Date is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Text="New Order" Height="26px" Width="85px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="MAKE ORDER" Height="26px" 
                                Width="121px" />
                            &nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category : 
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" 
                                DataValueField="FCategory_Id" Height="22px" Width="100px">
                            </asp:DropDownList>
                            <br />
                &nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Food&nbsp;:
                            <asp:DropDownList ID="DropDownList3" 
                                runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" 
                                DataTextField="Name" DataValueField="Food_Id" Height="22px">
                            </asp:DropDownList>
                            <br />
&nbsp;<br />
                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity :
                            <asp:TextBox ID="TextBox2" runat="server" Width="75px">0</asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" Display="Dynamic" 
                                ErrorMessage="Quantity is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToValidate="TextBox2" Display="Dynamic" 
                                ErrorMessage="Quantity should be numeric" ForeColor="Red" 
                                Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            <br />
                &nbsp;&nbsp; <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Price&nbsp;:
                            <asp:TextBox ID="TextBox3" runat="server" 
                                ReadOnly="True" Height="24px" Width="75px"></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Add" Height="24px" Width="66px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                            <asp:Button ID="Button6" runat="server" Text="Payment" Height="24px" 
                                Width="66px" />
                            <br />
                        </td>
                        <td style="vertical-align: top; text-align: left;" colspan="0" rowspan="0">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="0" 
                            style="vertical-align: top; text-align: left; ">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;
                        </td>
                        <td colspan="0" rowspan="0" 
                            style="vertical-align: top; text-align: left; ">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="Order_Id,Food_Id" DataSourceID="SqlDataSource4" 
                                GridLines="None" Width="544px" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="Order_Id" HeaderText="Order No" ReadOnly="True" 
                                        SortExpression="Order_Id" Visible="False" >
                                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" 
                                        VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Food_Id" HeaderText="Food No" ReadOnly="True" 
                                        SortExpression="Food_Id" >
                                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" 
                                        VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" 
                                        VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                        SortExpression="Quantity" >
                                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" 
                                        VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" 
                                        SortExpression="Total" >
                                    <HeaderStyle ForeColor="White" HorizontalAlign="Center" 
                                        VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [RBook_Id] FROM [Room_Booking_Detail]">
                </asp:SqlDataSource>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Food_Category]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [Order_Detail] WHERE [Order_Id] = @Order_Id AND [Food_Id] = @Food_Id" InsertCommand="INSERT INTO [Order_Detail] ([Order_Id], [Food_Id], [Quantity], [Price]) VALUES (@Order_Id, @Food_Id, @Quantity, @Price)
" SelectCommand="SELECT * FROM [v_orders] WHERE ([Order_Id] = @Order_Id)" UpdateCommand="UPDATE [Order_Detail] SET [Quantity] = @Quantity, [Price] = @Price WHERE [Order_Id] = @Order_Id AND [Food_Id] = @Food_Id
">
                                <DeleteParameters>
                                    <asp:Parameter Name="Order_Id" />
                                    <asp:Parameter Name="Food_Id" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Order_Id" />
                                    <asp:Parameter Name="Food_Id" />
                                    <asp:Parameter Name="Quantity" />
                                    <asp:Parameter Name="Price" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="Order_Id" SessionField="OD" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Quantity" />
                                    <asp:Parameter Name="Price" />
                                    <asp:Parameter Name="Order_Id" />
                                    <asp:Parameter Name="Food_Id" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Food] WHERE ([FCategory_Id] = @FCategory_Id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="FCategory_Id" 
                                        PropertyName="SelectedValue" Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>
   
</asp:Content>

