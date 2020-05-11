<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doc_Add.aspx.cs" Inherits="Aeroport.Doc_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 179px;
        }
        .style2
        {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table cellpadding="0" cellspacing="0">
        <tr>
        <td>№</td>
        <td> Дата </td>
        <td> Самолет </td>
        <td> Груз </td>
        <td class="style2"> Аэропорт </td>     
        <td> Операция </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="74px"></asp:TextBox>
                <br />
            </td>
        
            <td>
                
                <asp:Calendar ID="Calendar1" runat="server" Height="75px" Width="108px">
                </asp:Calendar>
            </td>
            <td>
                
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Марка" 
                    DataValueField="КодСамолета">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AeroportConnectionString %>" 
                    SelectCommand="SELECT [КодСамолета], [Марка] FROM [Самолеты]">
                </asp:SqlDataSource>
            </td>
            <td>
                
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="КодГруза" 
                    DataValueField="КодГруза">
                    <asp:ListItem>Принят</asp:ListItem>
                    <asp:ListItem>Отправлен</asp:ListItem>
                    <asp:ListItem>Отменен</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AeroportConnectionString %>" 
                    SelectCommand="SELECT [КодГруза] FROM [Грузы]"></asp:SqlDataSource>
                
            </td>

            <td class="style2"> 
            
                <asp:DropDownList ID="DropDownList5" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Название" 
                    DataValueField="КодАэропорта">
                    <asp:ListItem>Принят</asp:ListItem>
                    <asp:ListItem>Отправлен</asp:ListItem>
                    <asp:ListItem>Отменен</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AeroportConnectionString %>" 
                    SelectCommand="SELECT [КодАэропорта], [Название] FROM [Аэропорты]">
                </asp:SqlDataSource>
            
            </td>
       <td>
                
                <asp:DropDownList ID="DropDownList6" runat="server" 
                  DataSourceID="SqlDataSource4" DataTextField="Наименование" 
                  DataValueField="КодОперации">
                    <asp:ListItem>Принят</asp:ListItem>
                    <asp:ListItem>Отправлен</asp:ListItem>
                    <asp:ListItem>Отменен</asp:ListItem>
                </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:AeroportConnectionString %>" 
                  SelectCommand="SELECT * FROM [Операция]"></asp:SqlDataSource>
                
            <td>
                
                &nbsp;<td>
                
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Добавить" 
                    style="text-align: right" />
            </td>
        </tr>
    </table>

<asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onsorting="GridView1_Sorting" ShowFooter="True" 
        Width="716px">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="№ " ReadOnly="true" 
                SortExpression="ID" />
            <asp:BoundField DataField="Дата" HeaderText="Дата" 
                SortExpression="Дата" />
            <asp:BoundField DataField="Самолет" HeaderText="Самолет" 
                SortExpression="Самолет" />
            <asp:BoundField DataField="Груз" HeaderText="Груз " 
                SortExpression="Груз" /> 
                 <asp:BoundField DataField="Аэропорт" HeaderText="Аэропорт" 
                SortExpression="Аэропорт" />
           
                <asp:BoundField DataField="Операция" HeaderText="Операция" 
                SortExpression="Операция" /> 
                   
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

</asp:Content>
