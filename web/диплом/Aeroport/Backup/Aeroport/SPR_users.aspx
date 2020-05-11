<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SPR_users.aspx.cs" Inherits="Aeroport.SPR_users" %>
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
            <asp:BoundField DataField="Id" HeaderText="Id " ReadOnly="true" 
                SortExpression="Id" />
            <asp:BoundField DataField="Login" HeaderText="Логин" 
                SortExpression="Login" />
            <asp:BoundField DataField="Pass" HeaderText="Пароль" 
                SortExpression="Pass" />
            <asp:BoundField DataField="role" HeaderText="Роль" 
                SortExpression="role" />
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
        <td>Логин</td>
        <td> Пароль </td>
        <td> Роль  </td>

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
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="1">Администратор</asp:ListItem>
                    <asp:ListItem Value="2">Диспетчер</asp:ListItem>
                    <asp:ListItem Value="3">Кладовщик</asp:ListItem>
                </asp:DropDownList>
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
