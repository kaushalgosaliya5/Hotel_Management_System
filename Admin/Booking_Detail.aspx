<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Booking_Detail.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Room_Booking_Detail] WHERE [RBook_Id] = @RBook_Id" 
        InsertCommand="INSERT INTO [Room_Booking_Detail] ([RBook_Id], [RMaster_Id], [Room_Id], [No_Of_Person], [No_Of_Child], [Check_In_Date], [Check_Out_Date], [Is_Cancel], [Cancellation_Date], [Refund], [Is_Refund]) VALUES (@RBook_Id, @RMaster_Id, @Room_Id, @No_Of_Person, @No_Of_Child, @Check_In_Date, @Check_Out_Date, @Is_Cancel, @Cancellation_Date, @Refund, @Is_Refund)" 
        SelectCommand="SELECT * FROM [Room_Booking_Detail]" 
        UpdateCommand="UPDATE [Room_Booking_Detail] SET [RMaster_Id] = @RMaster_Id, [Room_Id] = @Room_Id, [No_Of_Person] = @No_Of_Person, [No_Of_Child] = @No_Of_Child, [Check_In_Date] = @Check_In_Date, [Check_Out_Date] = @Check_Out_Date, [Is_Cancel] = @Is_Cancel, [Cancellation_Date] = @Cancellation_Date, [Refund] = @Refund, [Is_Refund] = @Is_Refund WHERE [RBook_Id] = @RBook_Id">
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
            <asp:Parameter Name="Is_Cancel" Type="Boolean" />
            <asp:Parameter Name="Cancellation_Date" Type="DateTime" />
            <asp:Parameter Name="Refund" Type="Decimal" />
            <asp:Parameter Name="Is_Refund" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RMaster_Id" Type="Int32" />
            <asp:Parameter Name="Room_Id" Type="Decimal" />
            <asp:Parameter Name="No_Of_Person" Type="Decimal" />
            <asp:Parameter Name="No_Of_Child" Type="Decimal" />
            <asp:Parameter Name="Check_In_Date" Type="DateTime" />
            <asp:Parameter Name="Check_Out_Date" Type="DateTime" />
            <asp:Parameter Name="Is_Cancel" Type="Boolean" />
            <asp:Parameter Name="Cancellation_Date" Type="DateTime" />
            <asp:Parameter Name="Refund" Type="Decimal" />
            <asp:Parameter Name="Is_Refund" Type="Boolean" />
            <asp:Parameter Name="RBook_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RBook_Id" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Room_Id" HeaderText="Room No" 
                SortExpression="Room_Id">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="No_Of_Person" HeaderText="Person" 
                SortExpression="No_Of_Person" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" /> </asp:BoundField>
            <asp:BoundField DataField="No_Of_Child" HeaderText="Child" 
                SortExpression="No_Of_Child" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Check_In_Date" HeaderText="In Date" 
                SortExpression="Check_In_Date" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Check_Out_Date" HeaderText="Out Date" 
                SortExpression="Check_Out_Date" ApplyFormatInEditMode="True" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="Is_Cancel" HeaderText="Cancel" 
                SortExpression="Is_Cancel" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Is_Refund" HeaderText="Is_Refund" 
                SortExpression="Is_Refund" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CheckBoxField>
        </Columns>
    </asp:GridView>
</asp:Content>

