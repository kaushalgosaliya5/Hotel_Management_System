<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Room.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp; Type&nbsp; ::
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Type" DataValueField="RType_Id">
                </asp:DropDownList>
                <br />
&nbsp;<br />
&nbsp;Capacity&nbsp; ::&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
                <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp; Price&nbsp;&nbsp; ::
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Price should be numeric" ForeColor="Red" Operator="GreaterThan" 
                    Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Price is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp; Image&nbsp; ::
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="271px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Add" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="CANCEL" />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Room_Id" DataSourceID="SqlDataSource1" Width="477px" 
                    AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Room_Id" HeaderText="Room No" ReadOnly="True" 
                            SortExpression="Room_Id" ApplyFormatInEditMode="True" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                            SortExpression="Capacity" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Picture_Url" HeaderText="Image" 
                            SortExpression="Picture_Url" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Room] WHERE [Room_Id] = @Room_Id" 
                    InsertCommand="INSERT INTO [Room] ([Room_Id], [RType_Id], [Capacity], [Price], [Picture_Url]) VALUES (@Room_Id, @RType_Id, @Capacity, @Price, @Picture_Url)" 
                    SelectCommand="SELECT * FROM [Room]" 
                    UpdateCommand="UPDATE [Room] SET [RType_Id] = @RType_Id, [Capacity] = @Capacity, [Price] = @Price, [Picture_Url] = @Picture_Url WHERE [Room_Id] = @Room_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Room_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Room_Id" Type="Decimal" />
                        <asp:Parameter Name="RType_Id" Type="Decimal" />
                        <asp:Parameter Name="Capacity" Type="Decimal" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Picture_Url" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RType_Id" Type="Decimal" />
                        <asp:Parameter Name="Capacity" Type="Decimal" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Picture_Url" Type="String" />
                        <asp:Parameter Name="Room_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Room_Type]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

