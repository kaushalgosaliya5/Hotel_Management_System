<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="booking.aspx.vb" Inherits="booking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <table style="width: 100%">
        <tr>
            <td colspan="0" rowspan="0" 
                style="vertical-align: top; text-align: left; width: 297px;">
                <br />
&nbsp; Room Types ::&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="RType_Id" 
                    Height="20px" Width="120px">
                </asp:DropDownList>
                <br />
                <br />
                No Of Rooms&nbsp; ::
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="20px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="FILL DETAIL" Height="29px" 
                    Width="114px" BorderColor="#990033" BorderStyle="Solid" />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Room_Booking_Detail] WHERE [RBook_Id] = @RBook_Id" 
                    InsertCommand="INSERT INTO [Room_Booking_Detail] ([RBook_Id], [RMaster_Id], [Room_Id], [No_Of_Person], [No_Of_Child], [Check_In_Date], [Check_Out_Date]) VALUES (@RBook_Id, @RMaster_Id, @Room_Id, @No_Of_Person, @No_Of_Child, @Check_In_Date, @Check_Out_Date)" 
                    SelectCommand="SELECT [RBook_Id], [RMaster_Id], [Room_Id], [No_Of_Person], [No_Of_Child], [Check_In_Date], [Check_Out_Date] FROM [Room_Booking_Detail] WHERE ([RMaster_Id] = @RMaster_Id)" 
                    UpdateCommand="UPDATE [Room_Booking_Detail] SET [RMaster_Id] = @RMaster_Id, [Room_Id] = @Room_Id, [No_Of_Person] = @No_Of_Person, [No_Of_Child] = @No_Of_Child, [Check_In_Date] = @Check_In_Date, [Check_Out_Date] = @Check_Out_Date WHERE [RBook_Id] = @RBook_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="RBook_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="RBook_Id" Type="Int32" />
                        <asp:Parameter Name="RMaster_Id" Type="Int32" />
                        <asp:Parameter Name="Room_Id" Type="Decimal" />
                        <asp:Parameter Name="No_Of_Person" Type="Decimal" />
                        <asp:Parameter Name="No_Of_Child" Type="Decimal" />
                        <asp:Parameter Name="Check_In_Date" Type="DateTime" />
                        <asp:Parameter Name="Check_Out_Date" Type="DateTime" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="RMaster_Id" SessionField="RM" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RMaster_Id" Type="Int32" />
                        <asp:Parameter Name="Room_Id" Type="Decimal" />
                        <asp:Parameter Name="No_Of_Person" Type="Decimal" />
                        <asp:Parameter Name="No_Of_Child" Type="Decimal" />
                        <asp:Parameter Name="Check_In_Date" Type="DateTime" />
                        <asp:Parameter Name="Check_Out_Date" Type="DateTime" />
                        <asp:Parameter Name="RBook_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                    DataKeyNames="RBook_Id" DataSourceID="SqlDataSource3" DefaultMode="Edit" 
                    Width="259px" CellPadding="4" ForeColor="#333333">
                    <EditItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Book No :&nbsp;&nbsp;
                        <asp:Label ID="RBook_IdLabel1" runat="server" Text='<%# Eval("RBook_Id") %>' />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Room No :&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList5" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Room_Id" DataValueField="Room_Id" 
                            Height="20px" Width="50px" 
                           >
                        </asp:DropDownList>
                        <asp:TextBox ID="Room_IdTextBox" runat="server" Text='<%# Bind("Room_Id") %>' 
                            Height="15px" Visible="False" Width="15px" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Person :&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="50px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:TextBox ID="No_Of_PersonTextBox" runat="server" 
                            Text='<%# Bind("No_Of_Person") %>' Height="15px" Visible="False" 
                            Width="15px" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Child :&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="20px" Width="50px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:TextBox ID="No_Of_ChildTextBox" runat="server" Height="15px" 
                            Text='<%# Bind("No_Of_Child") %>' Width="15px" Visible="False" />
                        <br />
                        <br />
                        &nbsp; &nbsp; Check In Date :&nbsp;
                        <asp:TextBox ID="Check_In_DateTextBox" runat="server" 
                            Text='<%# Bind("Check_In_Date") %>' Height="20px" Width="80px" 
                            />
                     
                        <cc1:CalendarExtender ID="Check_In_DateTextBox_CalendarExtender" runat="server" 
                            Format="dd-MM-yyyy" TargetControlID="Check_In_DateTextBox" />
                     
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="Check_In_DateTextBox" 
                            ErrorMessage="Check in date can not be empty">*</asp:RequiredFieldValidator>
                     
                        <br />
                     
                        <br />
                        &nbsp; Check Out Date :
                        <asp:TextBox ID="Check_Out_DateTextBox" runat="server" 
                            Text='<%# Bind("Check_Out_Date") %>' Height="20px" Width="80px"
                            />
                      
                        <cc1:CalendarExtender ID="Check_Out_DateTextBox_CalendarExtender" 
                            runat="server" Format="dd-MM-yyyy" TargetControlID="Check_Out_DateTextBox" />
                      
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" onclick="UpdateButton_Click" 
                            Font-Size="13pt" ForeColor="Black" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                            Font-Size="13pt" ForeColor="Black" />
                        <br />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <br />
                        <asp:TextBox ID="RMaster_IdTextBox" runat="server" 
                            Text='<%# Bind("RMaster_Id") %>' Visible="False" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT [Room_Id], [RType_Id] FROM [Room] WHERE ([RType_Id] = @RType_Id)" 
                            >
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="RType_Id" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </EditItemTemplate>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        RBook Id ::
                        <asp:TextBox ID="RBook_IdTextBox" runat="server" Text='<%# Bind("RBook_Id") %>' 
                            Visible="False" />
                        <br />
                        RMaster_Id:
                        <asp:TextBox ID="RMaster_IdTextBox" runat="server" 
                            Text='<%# Bind("RMaster_Id") %>' />
                        <br />
                        Room_Id:
                        <asp:TextBox ID="Room_IdTextBox" runat="server" Text='<%# Bind("Room_Id") %>' />
                        <br />
                        No_Of_Person:
                        <asp:TextBox ID="No_Of_PersonTextBox" runat="server" 
                            Text='<%# Bind("No_Of_Person") %>' />
                        <br />
                        No_Of_Child:
                        <asp:TextBox ID="No_Of_ChildTextBox" runat="server" 
                            Text='<%# Bind("No_Of_Child") %>' />
                        <br />
                        Check_In_Date:
                        <asp:TextBox ID="Check_In_DateTextBox" runat="server" 
                            Text='<%# Bind("Check_In_Date") %>' />
                        <br />
                        Check_Out_Date:
                        <asp:TextBox ID="Check_Out_DateTextBox" runat="server" 
                            Text='<%# Bind("Check_Out_Date") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        RBook_Id:
                        <asp:Label ID="RBook_IdLabel" runat="server" Text='<%# Eval("RBook_Id") %>' />
                        <br />
                        RMaster_Id:
                        <asp:Label ID="RMaster_IdLabel" runat="server" 
                            Text='<%# Bind("RMaster_Id") %>' />
                        <br />
                        Room_Id:
                        <asp:Label ID="Room_IdLabel" runat="server" Text='<%# Bind("Room_Id") %>' />
                        <br />
                        No_Of_Person:
                        <asp:Label ID="No_Of_PersonLabel" runat="server" 
                            Text='<%# Bind("No_Of_Person") %>' />
                        <br />
                        No_Of_Child:
                        <asp:Label ID="No_Of_ChildLabel" runat="server" 
                            Text='<%# Bind("No_Of_Child") %>' />
                        <br />
                        Check_In_Date:
                        <asp:Label ID="Check_In_DateLabel" runat="server" 
                            Text='<%# Bind("Check_In_Date") %>' />
                        <br />
                        Check_Out_Date:
                        <asp:Label ID="Check_Out_DateLabel" runat="server" 
                            Text='<%# Bind("Check_Out_Date") %>' />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" 
                    Text="Payment " Height="32px" Width="100px" Visible="False" />
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </td>
            <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Room_Id" 
                    DataSourceID="SqlDataSource2" RepeatColumns="3">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Double" 
                            BorderWidth="5px" Height="150px" 
                            ImageUrl='<%# Eval("Picture_Url","~/Images/Rooms/{0}") %>' 
                            PostBackUrl='<%# Eval("Room_Id","~/bookingDescription.aspx?RID={0}") %>' 
                            Width="200px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp;Price :</b>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <b>&nbsp;Rs.</b><br />&nbsp;&nbsp; <b>&nbsp;Capacity :</b>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Capacity") %>'></asp:Label>
                        &nbsp;<b>Per.</b><br />&nbsp;
<br />
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Room] WHERE [Room_Id] = @Room_Id" 
                    InsertCommand="INSERT INTO [Room] ([Room_Id], [RType_Id], [Capacity], [Price], [Picture_Url]) VALUES (@Room_Id, @RType_Id, @Capacity, @Price, @Picture_Url)" 
                    SelectCommand="SELECT * FROM [Room] WHERE ([RType_Id] = @RType_Id)" 
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" 
                            Name="RType_Id" PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RType_Id" Type="Decimal" />
                        <asp:Parameter Name="Capacity" Type="Decimal" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Picture_Url" Type="String" />
                        <asp:Parameter Name="Room_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="0" rowspan="0" 
                style="vertical-align: top; text-align: left; width: 297px;">
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Room_Type]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>


