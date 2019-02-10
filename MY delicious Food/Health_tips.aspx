<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="Health_tips.aspx.cs" Inherits="Health_tips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        Height="113px" Width="937px">
        <Columns>
         <asp:TemplateField>
                <ItemTemplate>



<table style="border: thick groove #C0C0C0;  color: #C0C0C0; font-size: medium; font-variant: normal; width:76% " >
 
  <tr>
    <td  style="border: medium solid #C0C0C0">
        <asp:Label ID="Label4" runat="server" Text='<%# Bind("id") %>' Visible="False"></asp:Label>
        <asp:Image ID="Image1" runat="server"  Height="250" Width="250" ImageUrl='<%# Bind("img", "~/health/{0}") %>' />
        
        
        
        </td>
    <td    style="border: medium solid #C0C0C0">
 
    <div style="width:auto"> 
             <asp:Label ID="Label1" runat="server" Text='<%# Bind("heading") %>' ForeColor="Maroon" Font-Size="40px" Font-Bold="True" Font-Italic="False" Font-Underline="True" Font-Names="Gabriola"></asp:Label></div>
    <div><p style="width: 100%" align="justify"><asp:Label ID="Label3" runat="server" Text='<%# Bind("disc") %>'></asp:Label></p></div>
    
    <div><asp:Button ID="Button2" runat="server" Text="View More"  OnClick="myclick" BackColor="Maroon"    Font-Bold="True" ForeColor="#FFFFCC" /></div>
    </td>
  </tr>
 
</table>
   </ItemTemplate>
     </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:foodConnectionString %>" 
        SelectCommand="SELECT * FROM [health]"></asp:SqlDataSource>
</asp:Content>

