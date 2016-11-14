<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="bookingPayment.aspx.vb" Inherits="Room_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 100%">
            <tr>
                <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [Room_Payment] WHERE [RPayment_Id] = @RPayment_Id" 
                        InsertCommand="INSERT INTO [Room_Payment] ([RPayment_Id], [RMaster_Id], [Date], [Type], [Tax], [Payment]) VALUES (@RPayment_Id, @RMaster_Id, @Date, @Type, @Tax, @Payment)" 
                        SelectCommand="SELECT * FROM [Room_Payment] WHERE ([RMaster_Id] = @RMaster_Id)" 
                        UpdateCommand="UPDATE [Room_Payment] SET [RMaster_Id] = @RMaster_Id, [Date] = @Date, [Type] = @Type, [Tax] = @Tax, [Payment] = @Payment WHERE [RPayment_Id] = @RPayment_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="RPayment_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="RPayment_Id" Type="Int32" />
                            <asp:Parameter Name="RMaster_Id" Type="Int32" />
                            <asp:Parameter Name="Date" Type="DateTime" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="Tax" Type="Decimal" />
                            <asp:Parameter Name="Payment" Type="Decimal" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter Name="RMaster_Id" QueryStringField="RMID" 
                                Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="RMaster_Id" Type="Int32" />
                            <asp:Parameter Name="Date" Type="DateTime" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="Tax" Type="Decimal" />
                            <asp:Parameter Name="Payment" Type="Decimal" />
                            <asp:Parameter Name="RPayment_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 271px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;</td>
                            <td>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="RPayment_Id" 
                        DataSourceID="SqlDataSource1" DefaultMode="Edit" AllowPaging="True" Width="251px" 
                                    CellPadding="4" ForeColor="#333333">
                        <EditItemTemplate>
                            Payment No :
                            <asp:Label ID="RPayment_IdLabel1" runat="server" 
                                Text='<%# Eval("RPayment_Id") %>' />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Type :
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="116px">
                                <asp:ListItem>CASH</asp:ListItem>
                                <asp:ListItem>DEBIT CARD</asp:ListItem>
                                <asp:ListItem>CREDIT CARD</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:TextBox ID="TypeTextBox" runat="server" Height="16px" 
                               Text='<%# Bind("Type") %>' 
                                Visible="False" Width="27px" />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Tax :&nbsp;
                            <asp:TextBox ID="TaxTextBox" runat="server" Height="16px" Text=" 4" 
                                Width="22px"/>
                            %<br /> <br />
                            &nbsp;&nbsp;&nbsp; Payment :
                            <asp:TextBox ID="PaymentTextBox" runat="server" Height="20px" 
                                Text='<%# Bind("Payment") %>' Width="65px" />
                            Rs<br />
                            <br />
                            &nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" onclick="UpdateButton_Click" Text="Payment" 
                                Font-Size="12pt" style="color: #000000" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel" 
                                Font-Size="12pt" style="color: #000000" />
                            <br />
                            <br />
                            <asp:TextBox ID="RMaster_IdTextBox" runat="server" 
                                Text='<%# Bind("RMaster_Id") %>' Visible="False" />
                            <br />
                            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' 
                                Visible="False" />
                        </EditItemTemplate>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />

                        <HeaderTemplate>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        </HeaderTemplate>

                        <InsertItemTemplate>
                            RPayment_Id:
                            <asp:TextBox ID="RPayment_IdTextBox" runat="server" 
                                Text='<%# Bind("RPayment_Id") %>' />
                            <br />
                            RMaster_Id:
                            <asp:TextBox ID="RMaster_IdTextBox0" runat="server" 
                                Text='<%# Bind("RMaster_Id") %>' />
                            <br />
                            Date:
                            <asp:TextBox ID="DateTextBox0" runat="server" Text='<%# Bind("Date") %>' />
                            <br />
                            Type:
                            <asp:TextBox ID="TypeTextBox0" runat="server" Text='<%# Bind("Type") %>' />
                            <br />
                            Tax:
                            <asp:TextBox ID="TaxTextBox0" runat="server" Text='<%# Bind("Tax") %>' />
                            <br />
                            Payment:
                            <asp:TextBox ID="PaymentTextBox0" runat="server" 
                                Text='<%# Bind("Payment") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            RPayment_Id:
                            <asp:Label ID="RPayment_IdLabel" runat="server" 
                                Text='<%# Eval("RPayment_Id") %>' />
                            <br />
                            RMaster_Id:
                            <asp:Label ID="RMaster_IdLabel" runat="server" 
                                Text='<%# Bind("RMaster_Id") %>' />
                            <br />
                            Date:
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
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
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    </asp:FormView>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

