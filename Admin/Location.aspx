<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Location.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="vertical-align: top; text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="10pt" 
                    Height="31px" AutoPostBack="True" RepeatDirection="Horizontal" 
                    Width="361px">
                    <asp:ListItem> Country</asp:ListItem>
                    <asp:ListItem> State</asp:ListItem>
                    <asp:ListItem> City</asp:ListItem>
                    <asp:ListItem> Area</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top; text-align: left; width: 6px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td colspan="0" style="vertical-align: top; text-align: left; width: 98%;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Area] WHERE [Area_Id] = @Area_Id" 
                    InsertCommand="INSERT INTO [Area] ([Name], [City_Id]) VALUES (@Name, @City_Id)" 
                    SelectCommand="SELECT * FROM [Area]" 
                    UpdateCommand="UPDATE [Area] SET [Name] = @Name, [City_Id] = @City_Id WHERE [Area_Id] = @Area_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Area_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="City_Id" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="City_Id" Type="Decimal" />
                        <asp:Parameter Name="Area_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" 
                    DataKeyNames="Area_Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
                    ForeColor="#333333" Height="136px" Visible="False" Width="237px">
                    <EditItemTemplate>
                        Area_Id:
                        <asp:Label ID="Area_IdLabel1" runat="server" Text='<%# Eval("Area_Id") %>' />
                        <br />
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        City_Id:
                        <asp:TextBox ID="City_IdTextBox" runat="server" Text='<%# Bind("City_Id") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <div style="text-align: center; font-size: x-large">
                            <span style="color: #66FF33">Area</span><br />
                        </div>
                    </HeaderTemplate>
                    <InsertItemTemplate>
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Height="21px" Width="128px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="NameTextBox" ErrorMessage="Name is mandatory" 
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        City Name:
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="City_Id" 
                            Height="24px" Width="132px">
                        </asp:DropDownList>
                        &nbsp;<asp:TextBox ID="City_IdTextBox" runat="server" Height="23px" 
                            Text='<%# Bind("City_Id") %>' Visible="False" Width="22px" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" onclick="InsertButton_Click" Text="Insert" />
                        &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            ForeColor="#FF9900" Height="45px" Width="187px" />
                        <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Area_Id:
                        <asp:Label ID="Area_IdLabel" runat="server" Text='<%# Eval("Area_Id") %>' />
                        <br />
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        City_Id:
                        <asp:Label ID="City_IdLabel" runat="server" Text='<%# Bind("City_Id") %>' />
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
                <br />
            </td>
        </tr>
    </table>
  
</asp:Content>

