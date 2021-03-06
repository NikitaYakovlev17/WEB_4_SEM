﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SPR_Port.aspx.cs" Inherits="Aeroport.SPR_Port" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" onsorting="GridView1_Sorting" 
        ShowFooter="True" Width="695px">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="КодАэропорта" HeaderText="КодАэропорта " ReadOnly="true" 
                SortExpression="КодАэропорта" />
            <asp:BoundField DataField="Название" HeaderText="Название" 
                SortExpression="Название" />
            <asp:BoundField DataField="Страна" HeaderText="Страна" 
                SortExpression="Страна" />
            <asp:BoundField DataField="Город" HeaderText="Город" 
                SortExpression="Город" />
                <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />    
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            Номер записи
        </EmptyDataTemplate>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <br />
    <table cellpadding="0" cellspacing="0">
        <tr>
        <td> № </td>
        <td>Название</td>
        <td> Страна </td>
        <td> Город  </td>

        </tr>
        <tr>
            
                
            
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="122px"></asp:TextBox>
                <br />
            </td>
        
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="167px"></asp:TextBox>
                </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="113px"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="113px"></asp:TextBox>
                <br />
            </td>
            <td>
                <br />
            </td>
            
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Добавить" 
                    style="text-align: right" />
            </td>
        </tr>
    </table>
</asp:Content>
