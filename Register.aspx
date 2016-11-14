<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="CreateUser" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
     
  
     
    <p>
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr style="vertical-align: top; text-align: left">
                        <td colspan="0" rowspan="0" 
                            style="vertical-align: top; text-align: left; width: 218px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;<br />
                        </td>
                        <td colspan="0" style="vertical-align: top; text-align: left; width: 138px;" 
                            rowspan="0">
                            <br />
                            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
                                Height="367px" Width="559px">
                                <WizardSteps>
                                    <asp:CreateUserWizardStep runat="server">
                                        <ContentTemplate>
                                            <table style="font-size:100%;height:367px;width:510px;">
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        Sign Up for Your New Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                            ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                                            ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                                            AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                            ControlToValidate="ConfirmPassword" 
                                                            ErrorMessage="Confirm Password is required." 
                                                            ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                            ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                                            ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                            ControlToValidate="Email" ErrorMessage="Invalid Email Id" 
                                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                                            ControlToValidate="Question" ErrorMessage="Security question is required." 
                                                            ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                            ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                                            ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                            ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                            Display="Dynamic" 
                                                            ErrorMessage="The Password and Confirmation Password must match." 
                                                            ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:CreateUserWizardStep>
                                    <asp:CompleteWizardStep runat="server" >
                                        <ContentTemplate>
                                            <table style="font-size:100%;height:367px;width:396px;">
                                                <tr>
                                                    <td align="center">
                                                        Complete</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Your account has been successfully created.</td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                                            CommandName="Continue" onclick="ContinueButton_Click" Text="Continue" 
                                                            ValidationGroup="CreateUserWizard1" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:CompleteWizardStep>
                                </WizardSteps>
                            </asp:CreateUserWizard>
                            <br />
                        </td>
                        <td colspan="0" rowspan="0" style="vertical-align: top; text-align: left" 
                            width="0">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</p>
     
  
     
</asp:Content>


