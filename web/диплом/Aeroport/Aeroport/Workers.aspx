<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Workers.aspx.cs" Inherits="Aeroport.Workers" %>
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
            <asp:BoundField DataField="Таб" HeaderText="Таб " ReadOnly="true" 
                SortExpression="Таб" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" 
                SortExpression="Фамилия" />
            <asp:BoundField DataField="Имя" HeaderText="Имя" 
                SortExpression="Имя" />
            <asp:BoundField DataField="Отчество" HeaderText="Отчество" 
                SortExpression="Отчество" />
            <asp:BoundField DataField="ДатаРождения" HeaderText="ДатаРождения " ReadOnly="true" 
                SortExpression="ДатаРождения" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" 
                SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" 
                SortExpression="Телефон" />
            <asp:BoundField DataField="КодДолжности" HeaderText="КодДолжности" 
                SortExpression="КодДолжности" />

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
        <td> Табельный номер </td>
         <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="122px"></asp:TextBox>
                <br />
            </td>
        </tr> <tr>
        <td>Фамилия</td>
        <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="167px"></asp:TextBox>
                </td>
        </tr> <tr>
        <td> Имя </td>
        <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="113px"></asp:TextBox>
                <br />
        </td>
        </tr> <tr>
        <td> Отчетство  </td>
        <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="113px"></asp:TextBox>
                <br />
            </td>
        </tr> 
        <tr>
        <td> Дата рождения </td>
         <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="122px"></asp:TextBox>
                <br />
            </td>
        </tr> <tr>
        <td>Адрес</td>
        <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="167px"></asp:TextBox>
                </td>
        </tr> <tr>
        <td> Телефон </td>
        <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="113px"></asp:TextBox>
                <br />
        </td>
        </tr> <tr>
        <td> Должность  </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Должность" 
                DataValueField="КодДолжности">
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AeroportConnectionString %>" 
                SelectCommand="SELECT * FROM [Должности]"></asp:SqlDataSource>
                <br />
            </td>
        </tr> 
        
        
        <tr>
            
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

