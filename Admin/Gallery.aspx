<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Gallery.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Choose Images :<asp:FileUpload ID="FileUpload1" runat="server" />
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="FileUpload1" Display="Dynamic" 
                                ErrorMessage="Image  is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Height="30px" Text="Upload" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="121px" 
                                        ImageUrl='<%# eval("Name","~/images/Gallery/{0}") %>' Width="162px" 
                                        BorderColor="Black" BorderWidth="3px" />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
</asp:Content>

