<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="restaurantDeliver.aspx.vb" Inherits="restaurant" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 96%; height: 382px;">
        <tr>
            <td rowspan="0" 
                   
                style="vertical-align: top; text-align: left; width: 836px; ">
                &nbsp;</td>
            <td colspan="0" rowspan="0" 
                   
                style="vertical-align: top; text-align: left; width: 295px; ">
                <BR/>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Food_Delivery_Master] WHERE [FDelivery_Id] = @FDelivery_Id" 
                    InsertCommand="INSERT INTO [Food_Delivery_Master] ([FDelivery_Id], [User_Name], [Date], [Status], [Area_Id], [Address]) VALUES (@FDelivery_Id, @User_Name, @Date, @Status, @Area_Id, @Address)" 
                    SelectCommand="SELECT * FROM [Food_Delivery_Master]" 
                    UpdateCommand="UPDATE [Food_Delivery_Master] SET [User_Name] = @User_Name, [Date] = @Date, [Status] = @Status, [Area_Id] = @Area_Id, [Address] = @Address WHERE [FDelivery_Id] = @FDelivery_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Area_Id" Type="Decimal" />
                        <asp:Parameter Name="Address" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Area_Id" Type="Decimal" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="FDelivery_Id" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="16px" 
                    Width="249px">
                    <EditItemTemplate>
                        FDelivery_Id:
                        <asp:Label ID="FDelivery_IdLabel1" runat="server" 
                            Text='<%# Eval("FDelivery_Id") %>' />
                        <br />
                        User_Name:
                        <asp:TextBox ID="User_NameTextBox" runat="server" 
                            Text='<%# Bind("User_Name") %>' />
                        <br />
                        Date:
                        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                        <br />
                        Status:
                      <%--  <asp:CheckBox ID="StatusCheckBox" runat="server" 
                           <%-- Checked='<%# Bind("Status") %>'--%> />--%>
                        <br />
                        Area_Id:
                        <asp:TextBox ID="Area_IdTextBox" runat="server" Text='<%# Bind("Area_Id") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp;Date :&nbsp; </b>
                        <asp:TextBox ID="DateTextBox" runat="server" style="font-weight: bold" 
                            Text='<%# Bind("Date") %>' Width="120px" Height="20px"  />
                    
                       
                    
                        <cc1:CalendarExtender ID="DateTextBox_CalendarExtender" runat="server" 
                            Format="dd-MM-yyyy" TargetControlID="DateTextBox" />
                    
                       
                    
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToValidate="DateTextBox" ErrorMessage="Invalid Date" 
                            Operator="GreaterThan" Type="Date" ValueToCompare="30/03/2015">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DateTextBox" ErrorMessage="Write Date">*</asp:RequiredFieldValidator>
                    
                       
                    
                        <b><span>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City&nbsp; :&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="City_Id" 
                            Height="20px" Width="120px">
                        </asp:DropDownList>
                        &nbsp;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; Area&nbsp; : &nbsp;<asp:DropDownList 
                            ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Area_Id" 
                            Width="120px" Height="20px">
                        </asp:DropDownList>
                        <asp:TextBox ID="Area_IdTextBox" runat="server" Height="16px" 
                            style="font-weight: bold" Text='<%# Bind("Area_Id") %>' Visible="False" 
                            Width="20px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <br />
                        Address :&nbsp; </span></b>
                        <asp:TextBox ID="AddressTextBox" runat="server" 
                            style="font-weight: bold; color: #000000" Text='<%# Bind("Address") %>' 
                            TextMode="MultiLine" Width="120px" Height="38px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="AddressTextBox" ErrorMessage="Write Address">*</asp:RequiredFieldValidator>
                        <b>
                        <br />
                        </b>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" onclick="InsertButton_Click1" Text="Add" 
                            style="color: #000000; font-size: medium; text-decoration: none" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Cancel" 
                            style="color: #000000; font-size: medium; text-decoration: none" />
                        <br />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="45px" />
                        <br />
                        <asp:TextBox ID="FDelivery_IdTextBox" runat="server" 
                            Text='<%# Bind("FDelivery_Id") %>' Visible="False" />
                        <br />
                        <asp:TextBox ID="User_NameTextBox" runat="server" 
                            Text='<%# Bind("User_Name") %>' Visible="False" />
                        <br />
                        <b>
                        <asp:CheckBox ID="StatusCheckBox" runat="server" 
                            Checked='<%# Bind("Status") %>' Visible="False" />
                        <span>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Area] WHERE ([City_Id] = @City_Id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="City_Id" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </span></b>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        FDelivery_Id:
                        <asp:Label ID="FDelivery_IdLabel" runat="server" 
                            Text='<%# Eval("FDelivery_Id") %>' />
                        <br />
                        User_Name:
                        <asp:Label ID="User_NameLabel" runat="server" Text='<%# Bind("User_Name") %>' />
                        <br />
                        Date:
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
                        <br />
                        Status:
                        <asp:CheckBox ID="StatusCheckBox" runat="server" 
                            Checked='<%# Bind("Status") %>' Enabled="false" />
                        <br />
                        Area_Id:
                        <asp:Label ID="Area_IdLabel" runat="server" Text='<%# Bind("Area_Id") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
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
            <td rowspan="0" 
                
                
                
                style="vertical-align: top; text-align: left; width: 595px; ">
                &nbsp; 
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Food_Delivery_Master] WHERE [FDelivery_Id] = @FDelivery_Id" 
                    InsertCommand="INSERT INTO [Food_Delivery_Master] ([FDelivery_Id], [User_Name], [Date], [Status], [Area_Id], [Address]) VALUES (@FDelivery_Id, @User_Name, @Date, @Status, @Area_Id, @Address)" 
                    SelectCommand="SELECT * FROM [Food_Delivery_Master] WHERE (([User_Name] LIKE '%' + @User_Name + '%') AND ([Status] = @Status)) ORDER BY [FDelivery_Id] DESC" 
                    
                    UpdateCommand="UPDATE [Food_Delivery_Master] SET [User_Name] = @User_Name, [Date] = @Date, [Status] = @Status, [Area_Id] = @Area_Id, [Address] = @Address WHERE [FDelivery_Id] = @FDelivery_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Area_Id" Type="Decimal" />
                        <asp:Parameter Name="Address" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="User_Name" SessionField="TempUser" Type="String" />
                        <asp:Parameter DefaultValue="False" Name="Status" Type="Boolean" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Area_Id" Type="Decimal" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="FDelivery_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:FormView ID="FormView2" runat="server" DataKeyNames="FDelivery_Id" 
                    DataSourceID="SqlDataSource2" AllowPaging="True" Width="332px" 
                    DefaultMode="Edit" Height="157px" CellPadding="4" ForeColor="#333333">
                    <EditItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <table style="width: 106%">
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; font-weight: bold; width: 124px;">
                                    Delivery No :
                                </td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 111px;">
                                    <b>
                                    <asp:Label ID="FDelivery_IdLabel1" runat="server" 
                                        Text='<%# Eval("FDelivery_Id") %>' />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </b>
                                </td>
                                <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; font-weight: bold; width: 124px;">
                                    User Name :</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 111px;">
                                    <asp:TextBox ID="User_NameTextBox" runat="server" ReadOnly="True" 
                                        style="font-weight: bold" Text='<%# Bind("User_Name") %>' Width="120px" 
                                        Height="20px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                </td>
                                <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; height: 18px; width: 124px;">
                                    <b>Date</b> :</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; height: 18px; width: 111px;">
                                    <asp:TextBox ID="DateTextBox" runat="server" style="font-weight: bold" 
                                        Text='<%# Bind("Date") %>' Width="120px" Height="20px" />
                                    &nbsp;&nbsp;
                                    <br />
                                    <br />
                                </td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; height: 18px;">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; font-weight: bold; width: 124px;">
                                    Cancel :</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 111px;">
                                    <b>
                                    <asp:CheckBox ID="StatusCheckBox" runat="server" 
                                        Checked='<%# Bind("Status") %>' />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                    </b>
                                </td>
                                <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; font-weight: bold; width: 124px;">
                                    City :</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 111px;">
                                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="City_Id" 
                                        Height="20px" style="font-weight: bold" Width="120px">
                                    </asp:DropDownList>
                                    <br />
                                    &nbsp;
                                </td>
                                <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; font-weight: bold; width: 124px;">
                                    Area :</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 111px;">
                                    <asp:DropDownList ID="DropDownList4" runat="server" 
                                        DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Area_Id" 
                                        Height="20px" style="font-weight: bold" Width="120px">
                                    </asp:DropDownList>
                                    <br />
                                    &nbsp;
                                </td>
                                <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                                    <asp:TextBox ID="Area_IdTextBox" runat="server" Height="16px" 
                                        style="font-weight: bold" Text='<%# Bind("Area_Id") %>' Visible="False" 
                                        Width="16px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: right; font-weight: bold; width: 124px;">
                                    Address :</td>
                                <td colspan="0" rowspan="0" 
                                    style="vertical-align: top; text-align: left; width: 111px;">
                                    <asp:TextBox ID="AddressTextBox" runat="server" style="font-weight: bold" 
                                        Text='<%# Bind("Address") %>' TextMode="MultiLine" Width="120px" />
                                </td>
                                <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <b>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</b><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" onclick="UpdateButton_Click" 
                            style="text-decoration: none; font-size: medium; color: #000000" />
                        <b>&nbsp;&nbsp;&nbsp; </b> <asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                            style="text-decoration: none; font-size: medium; color: #000000" />
                        <b>
                        <br />
                        <br />
                        </b>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Area] WHERE ([City_Id] = @City_Id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList3" Name="City_Id" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </EditItemTemplate>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <span style="color: #FFFFFF; font-size: 15pt">&nbsp;&nbsp; All Orders</span>
                        <br />
                        <br />
                    </HeaderTemplate>
                    <InsertItemTemplate>
                        FDelivery_Id:
                        <asp:TextBox ID="FDelivery_IdTextBox" runat="server" 
                            Text='<%# Bind("FDelivery_Id") %>' />
                        <br />
                        User_Name:
                        <asp:TextBox ID="User_NameTextBox" runat="server" 
                            Text='<%# Bind("User_Name") %>' />
                        <br />
                        Date:
                        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                        <br />
                        Status:
                        <asp:CheckBox ID="StatusCheckBox" runat="server" 
                            Checked='<%# Bind("Status") %>' />
                        <br />
                        Area_Id:
                        <asp:TextBox ID="Area_IdTextBox" runat="server" Text='<%# Bind("Area_Id") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        FDelivery_Id:
                        <asp:Label ID="FDelivery_IdLabel" runat="server" 
                            Text='<%# Eval("FDelivery_Id") %>' />
                        <br />
                        User_Name:
                        <asp:Label ID="User_NameLabel" runat="server" Text='<%# Bind("User_Name") %>' />
                        <br />
                        Date:
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
                        <br />
                        Status:
                        <asp:CheckBox ID="StatusCheckBox" runat="server" 
                            Checked='<%# Bind("Status") %>' Enabled="false" />
                        <br />
                        Area_Id:
                        <asp:Label ID="Area_IdLabel" runat="server" Text='<%# Bind("Area_Id") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
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
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" ForeColor="#990033" Text="Make Order" 
                    BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
                    Height="25px" Width="120px" />
                <br />
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </td>
            <td rowspan="0" 
                
                
                
                style="vertical-align: top; text-align: left; width: 515px; ">
                &nbsp;</td>
            <td rowspan="0" style="vertical-align: top; text-align: left; ">
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

