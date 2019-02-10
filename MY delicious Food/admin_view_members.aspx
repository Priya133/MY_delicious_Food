<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page.master" AutoEventWireup="true" CodeFile="admin_view_members.aspx.cs" Inherits="admin_view_members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="70%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="username" HeaderText="User Name" 
                SortExpression="username" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="occupation" HeaderText="Occupation" 
                SortExpression="occupation" />
            <asp:BoundField DataField="mobno" HeaderText="Mobile No" SortExpression="mobno" />
            <asp:BoundField DataField="mem_type" HeaderText="Membership Type" 
                SortExpression="mem_type" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
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
    
        
        SelectCommand="SELECT [name], [username], [gender], [dob], [email], [occupation], [mobno], [mem_type], [address] FROM [registration]">
</asp:SqlDataSource>
</asp:Content>

