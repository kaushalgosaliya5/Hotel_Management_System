<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Food.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td>
                <br />
&nbsp;Food Name ::
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Food name is mandatory" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price ::
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Price is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Price should be numeric" ForeColor="Red" Operator="GreaterThan" 
                    Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp; Category ::&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" 
                    DataValueField="FCategory_Id" Height="22px" Width="158px">
                </asp:DropDownList>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="29px" Text="Add" Width="83px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="27px" Text="Cancel" 
                    Width="75px" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Food_Id" 
                    DataSourceID="SqlDataSource1" Height="255px" Width="545px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                        <asp:BoundField DataField="Food_Id" HeaderText="Food No" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Food_Id">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Food] WHERE [Food_Id] = @Food_Id" 
                    InsertCommand="INSERT INTO [Food] ([Food_Id], [FCategory_Id], [Name], [Price]) VALUES (@Food_Id, @FCategory_Id, @Name, @Price)" 
                    SelectCommand="SELECT * FROM [Food]" 
                    UpdateCommand="UPDATE [Food] SET [FCategory_Id] = @FCategory_Id, [Name] = @Name, [Price] = @Price WHERE [Food_Id] = @Food_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Food_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Food_Id" Type="Decimal" />
                        <asp:Parameter Name="FCategory_Id" Type="Decimal" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FCategory_Id" Type="Decimal" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Food_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Food_Category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
</asp:Content>

