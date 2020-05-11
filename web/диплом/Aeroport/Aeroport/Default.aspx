<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site_Def.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Aeroport._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 141px;
        }
        .style2
        {
            width: 141px;
            height: 26px;
        }
        .style3
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  <table style="width: 313px"  align="center" >
    <tr>
        <td class="style2"> 

            Логин</td>
        <td class="style3"> 

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </td>
    </tr>
  <tr>
        <td class="style1"> 

            Пароль</td>
        <td> 

            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

        </td>
    </tr>
    <tr> 
  <td colspan="2" style="text-align: center"> 
      <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
      </td>
  </tr>
  <tr> 
  <td colspan="2" style="text-align: center"> 
      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Войти " />
      </td>
  </tr>
  </table>
    
</asp:Content>
