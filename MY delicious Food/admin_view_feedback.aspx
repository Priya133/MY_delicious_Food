<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page.master" AutoEventWireup="true" CodeFile="admin_view_feedback.aspx.cs" Inherits="admin_view_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None" Height="181px" Width="695px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="contact" HeaderText="contact" 
                SortExpression="contact" />
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:foodConnectionString %>" 
    SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</asp:Content>

