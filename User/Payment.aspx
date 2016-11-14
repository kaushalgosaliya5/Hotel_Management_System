<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="false" CodeFile="Payment.aspx.vb" Inherits="User_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 235px">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [Food_Payment] WHERE ([FPayment_Id] = @FPayment_Id)" 
                    InsertCommand="INSERT INTO [Food_Payment] ([Order_Id], [FDelivery_Id], [Type], [Tax], [Payment]) VALUES (@Order_Id, @FDelivery_Id, @Type, @Tax, @Payment)">
                    <InsertParameters>
                        <asp:Parameter Name="Order_Id" />
                        <asp:Parameter Name="FDelivery_Id" />
                        <asp:Parameter Name="Type" />
                        <asp:Parameter Name="Tax" />
                        <asp:Parameter Name="Payment" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="FPayment_Id" SessionField="FD" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" 
                    DataKeyNames="FPayment_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    Height="264px" Width="321px" DefaultMode="Insert">
                    <EditItemTemplate>
                        FPayment_Id:
                        <asp:Label ID="FPayment_IdLabel1" runat="server" 
                            Text='<%# Eval("FPayment_Id") %>' />
                        <br />
                        Order_Id:
                        <asp:TextBox ID="Order_IdTextBox" runat="server" 
                            Text='<%# Bind("Order_Id") %>' />
                        <br />
                        FDelivery_Id:
                        <asp:TextBox ID="FDelivery_IdTextBox" runat="server" 
                            Text='<%# Bind("FDelivery_Id") %>' />
                        <br />
                        Type:
                        <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                        <br />
                        Tax:
                        <asp:TextBox ID="TaxTextBox" runat="server" Text='<%# Bind("Tax") %>' />
                        <br />
                        Payment:
                        <asp:TextBox ID="PaymentTextBox" runat="server" Text='<%# Bind("Payment") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Food Payment
                    </HeaderTemplate>
                    <InsertItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order No :&nbsp;
                        <asp:TextBox ID="FDelivery_IdTextBox" runat="server" 
                            Text='<%# Bind("FDelivery_Id") %>' Height="18px" Width="42px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Type :&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            Height="25px" Width="73px">
                            <asp:ListItem>CASH</asp:ListItem>
                            <asp:ListItem>CREDIT CARD</asp:ListItem>
                            <asp:ListItem>DEBIT CARD</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                        <asp:TextBox ID="TypeTextBox" runat="server" Height="17px" 
                            Text='<%# Bind("Type") %>' Width="24px" Visible="False" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tax :&nbsp;
                        <asp:TextBox ID="TaxTextBox" runat="server" Height="19px" Text="  4" 
                            Width="21px"  />
                        %<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment :
                        <asp:TextBox ID="PaymentTextBox" runat="server" Height="20px" 
                            Text='<%# Bind("Payment") %>' Width="113px" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton 
                            ID="InsertButton" runat="server" 
                            CausesValidation="True" CommandName="Insert" Text="Payment" 
                            onclick="InsertButton_Click" style="text-decoration: none" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Cancel" style="text-decoration: none" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        FPayment_Id:
                        <asp:Label ID="FPayment_IdLabel" runat="server" 
                            Text='<%# Eval("FPayment_Id") %>' />
                        <br />
                        Order_Id:
                        <asp:Label ID="Order_IdLabel" runat="server" Text='<%# Bind("Order_Id") %>' />
                        <br />
                        FDelivery_Id:
                        <asp:Label ID="FDelivery_IdLabel" runat="server" 
                            Text='<%# Bind("FDelivery_Id") %>' />
                        <br />
                        Type:
                        <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
                        <br />
                        Tax:
                        <asp:Label ID="TaxLabel" runat="server" Text='<%# Bind("Tax") %>' />
                        <br />
                        Payment:
                        <asp:Label ID="PaymentLabel" runat="server" Text='<%# Bind("Payment") %>' />
                        <br />

                    </ItemTemplate>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:FormView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Food_Payment] WHERE [FPayment_Id] = @FPayment_Id" 
                    InsertCommand="INSERT INTO [Food_Payment] ([Order_Id], [FDelivery_Id], [Type], [Tax], [Payment]) VALUES (@Order_Id, @FDelivery_Id, @Type, @Tax, @Payment)" 
                    SelectCommand="SELECT * FROM [Food_Payment] WHERE ([FDelivery_Id] = @FDelivery_Id)" 
                    UpdateCommand="UPDATE [Food_Payment] SET [Order_Id] = @Order_Id, [FDelivery_Id] = @FDelivery_Id, [Type] = @Type, [Tax] = @Tax, [Payment] = @Payment WHERE [FPayment_Id] = @FPayment_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="FPayment_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Order_Id" Type="Int32" />
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Tax" Type="Decimal" />
                        <asp:Parameter Name="Payment" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="FDelivery_Id" SessionField="FD" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Order_Id" Type="Int32" />
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Tax" Type="Decimal" />
                        <asp:Parameter Name="Payment" Type="Decimal" />
                        <asp:Parameter Name="FPayment_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

