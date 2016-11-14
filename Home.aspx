<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<%-- Add content controls here --%>

 <asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
     <div id="content">
 <%--   <div class="wrapper">--%>
    <%--  <div class="content">--%>
       <%-- <div class="indent">--%>
          <h2>Our location</h2>
          <img class="img-indent png" alt="" src="images/5page-img1.png" />
          <div class="extra-wrap">
            <p class="alt-top" 
                  
                  style="font-weight: bold; font-size: medium; font-family: Andalus; color: #000000;">Our hotel is located in the most spectacular part of Prague - surrounded by boutiques, restaurants and luxurious shops.</p>
              <span style="font-family: Andalus">
              <span style="font-size: medium">
            <p><b>Please feel free to come visit us at the following adress:</b></p>
              <dt><b>1st Floor,Pushpak Arcade,Hirawadi BRTS Stop,N.H No-8,</b></dt>
              <dd><b>Hirawdi,Bapunagar,Ahmedabad. Ph. : 079-22730100</b></dd>
              </span>
              <dd><b><span style="font-size: medium">E-mail :<asp:HyperLink
                      ID="HyperLink1" runat="server" NavigateUrl="Home.aspx"> aamantranrestaurant@gmail.com</asp:HyperLink></dd></span></b>
              <br/>
                  </span>
              <dt></dt>
            </div>
      
       <%-- </div>--%>
   <%--   </div>--%>
      
    <%--</div>--%>
  </div>
</asp:Content>
