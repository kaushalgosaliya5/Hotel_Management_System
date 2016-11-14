<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Service.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="width: 100%">
        <tr>
            <td>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Type ::
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Type is mandatory" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Type should be text" ForeColor="Red" Operator="DataTypeCheck" 
                    ValueToCompare="0"></asp:CompareValidator>
                <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Charge ::
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Charge is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Charge should be numeric" ForeColor="Red" Operator="GreaterThan" 
                    Type="Integer" ValueToCompare="1"></asp:CompareValidator>
                <br />
&nbsp;<br />
&nbsp; Description ::
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Description is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Description should be text" ForeColor="Red" 
                    Operator="DataTypeCheck" ValueToCompare="0"></asp:CompareValidator>
                <br />
&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Add" Width="58px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="30px" Text="Cancel" 
                    Width="58px" />
                &nbsp;&nbsp;
&nbsp;&nbsp;
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="RFDetail_Id" DataSourceID="SqlDataSource1" Width="493px" 
                    AllowPaging="True" AllowSorting="True" Height="274px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="RFDetail_Id" HeaderText="Service No" 
                            ReadOnly="True" SortExpression="RFDetail_Id" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Charge" HeaderText="Charge" 
                            SortExpression="Charge" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Room_Facility_Detail] WHERE [RFDetail_Id] = @RFDetail_Id" 
                    InsertCommand="INSERT INTO [Room_Facility_Detail] ([RFDetail_Id], [Type], [Charge], [Description]) VALUES (@RFDetail_Id, @Type, @Charge, @Description)" 
                    SelectCommand="SELECT * FROM [Room_Facility_Detail]" 
                    UpdateCommand="UPDATE [Room_Facility_Detail] SET [Type] = @Type, [Charge] = @Charge, [Description] = @Description WHERE [RFDetail_Id] = @RFDetail_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="RFDetail_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="RFDetail_Id" Type="Decimal" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Charge" Type="Decimal" />
                        <asp:Parameter Name="Description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Charge" Type="Decimal" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="RFDetail_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
   
</asp:Content>

