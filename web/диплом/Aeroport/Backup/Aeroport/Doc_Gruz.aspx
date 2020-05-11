<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doc_Gruz.aspx.cs" Inherits="Aeroport.Doc_Gruz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="0" cellspacing="0">
        <tr>
        <td>Код  груза</td>
        <td> Дата поступления</td>
        <td> Статус </td>
        <td> Вес, грамм </td>
        <td> Сотрудник </td>
        <td> Тип </td>
        <td> Примечание </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="73px"></asp:TextBox>
                <br />
            </td>
        
            <td>
                
                <asp:Calendar ID="Calendar1" runat="server" Height="75px" Width="108px">
                </asp:Calendar>
            </td>
            <td>
                
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Принят</asp:ListItem>
                    <asp:ListItem>Отправлен</asp:ListItem>
                    <asp:ListItem>Получен</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                
                <asp:TextBox ID="TextBox11" runat="server" Width="71px"></asp:TextBox>
                
            </td>

            <td> 
            
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Фамилия" DataValueField="Таб">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AeroportConnectionString %>" 
                    SelectCommand="SELECT [Таб], [Фамилия] FROM [Сотрудники]">
                </asp:SqlDataSource>
            
            </td>
       <td>
                
              <asp:DropDownList ID="DropDownList1" runat="server" 
                  DataSourceID="SqlDataSource1" DataTextField="Наименование" 
                  DataValueField="КодТипа">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:AeroportConnectionString %>" 
                  SelectCommand="SELECT * FROM [Тип]"></asp:SqlDataSource>
                
            <td>
                
              <asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox>
                
            <td>
                
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Добавить" 
                    style="text-align: right" />
            </td>
        </tr>
    </table>

<asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onsorting="GridView1_Sorting" ShowFooter="True" Width="695px">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="КодГруза" HeaderText="КодГруза " ReadOnly="true" 
                SortExpression="КодГруза" />
            <asp:BoundField DataField="ДатаПоступления" HeaderText="ДатаПоступления" 
                SortExpression="ДатаПоступления" />
            <asp:BoundField DataField="Статус" HeaderText="Статус" 
                SortExpression="Статус" />
            <asp:BoundField DataField="Вес" HeaderText="Вес" 
                SortExpression="Вес" /> 
                 <asp:BoundField DataField="Таб" HeaderText="Табельный" 
                SortExpression="Таб" />
            <asp:BoundField DataField="КодТипа" HeaderText="Тип груза" 
                SortExpression="КодТипа" /> 
                <asp:BoundField DataField="Примечание" HeaderText="Примечание" 
                SortExpression="Примечание" /> 
                   
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
   
</asp:Content>
