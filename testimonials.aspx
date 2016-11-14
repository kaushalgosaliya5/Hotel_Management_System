<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="testimonials.aspx.vb" Inherits="testinomials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="width: 100%">
        <tr>
            <td>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Overline="False" Font-Size="30pt" 
                    Font-Underline="False" ForeColor="#FF6600" Text="TESTIMONIALS"></asp:Label>
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Feedback_Id" 
                    DataSourceID="SqlDataSource1" Width="752px" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" GridLines="Both" RepeatColumns="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <ItemTemplate>
                        <div style="text-align: left; width: 454px;">
                            <b><span style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Feedback_IdLabel" runat="server" 
                                Text='<%# Eval("Feedback_Id") %>' />
                            &nbsp;:
                            <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rating :
                            <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description :
                            <asp:Label ID="DescriptionLabel" runat="server" 
                                Text='<%# Eval("Description") %>' />
                            <br />
                            </span>&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Feedback] WHERE [Feedback_Id] = @Feedback_Id" 
                    InsertCommand="INSERT INTO [Feedback] ([Feedback_Id], [User_Name], [Description], [Rating]) VALUES (@Feedback_Id, @User_Name, @Description, @Rating)" 
                    SelectCommand="SELECT * FROM [Feedback] WHERE ([User_Name] = @User_Name)" 
                    UpdateCommand="UPDATE [Feedback] SET [User_Name] = @User_Name, [Description] = @Description, [Rating] = @Rating WHERE [Feedback_Id] = @Feedback_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Feedback_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Feedback_Id" Type="Int32" />
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Rating" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="User_Name" SessionField="TempUser" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Rating" Type="Decimal" />
                        <asp:Parameter Name="Feedback_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="Feedback_Id" 
                    DataSourceID="SqlDataSource2" DefaultMode="Insert">
                    <EditItemTemplate>
                        Feedback_Id:
                        <asp:Label ID="Feedback_IdLabel1" runat="server" 
                            Text='<%# Eval("Feedback_Id") %>' />
                        <br />
                        User_Name:
                        <asp:TextBox ID="User_NameTextBox" runat="server" 
                            Text='<%# Bind("User_Name") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        Rating:
                        <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        &nbsp;<table style="width: 59%; height: 96px">
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; width: 120px;">
                                    &nbsp;</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 64px;">
                                    &nbsp;</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 33px;">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    
                                    style="vertical-align: top; text-align: right; width: 120px; font-size: medium;">
                                    <b>Desciption&nbsp;&nbsp; </b>
                                </td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 64px;">
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" Height="31px" 
                                        style="font-weight: bold; font-size: medium;" 
                                        Text='<%# Bind("Description") %>' Width="156px" TextMode="MultiLine" />
                                </td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 33px;">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="DescriptionTextBox" ErrorMessage="Write Description" 
                                        Font-Bold="True" Font-Size="10pt" ForeColor="Red" Width="150px" 
                                        style="font-size: medium"></asp:RequiredFieldValidator>
                                    <span style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    
                                    style="vertical-align: top; text-align: right; width: 120px; font-size: medium;">
                                    <b>Rating ::</b></td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 64px;">
                                    <b>
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Selected="True">1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:RadioButtonList>
                                    </b>
                                </td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 33px;">
                                    <b>
                                    <asp:TextBox ID="RatingTextBox" runat="server" Height="16px" 
                                        style="font-weight: bold; font-size: medium;" Text='<%# Bind("Rating") %>' Visible="False" 
                                        Width="16px" />
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; width: 120px;">
                                    &nbsp;</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 64px;">
                                    &nbsp;</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 33px;">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <b>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" onclick="InsertButton_Click" Text="Add" 
                            Font-Size="12pt" ForeColor="Black" Font-Underline="False" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton 
                            ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                            Font-Size="12pt" ForeColor="Black" Font-Underline="False" />
                        <br />
                        <br />
                        <asp:TextBox ID="Feedback_IdTextBox" runat="server" 
                            Text='<%# Bind("Feedback_Id") %>' Visible="False" />
                        <asp:TextBox ID="User_NameTextBox" runat="server" 
                            Text='<%# Bind("User_Name") %>' Visible="False" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Feedback_Id:
                        <asp:Label ID="Feedback_IdLabel" runat="server" 
                            Text='<%# Eval("Feedback_Id") %>' />
                        <br />
                        User_Name:
                        <asp:Label ID="User_NameLabel" runat="server" Text='<%# Bind("User_Name") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        Rating:
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Bind("Rating") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
        </tr>
    </table>
   
</asp:Content>

