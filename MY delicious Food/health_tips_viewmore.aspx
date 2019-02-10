<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="health_tips_viewmore.aspx.cs" Inherits="health_tips_viewmore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <b> <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola"  align="center"> 
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <u> More Information </u>
    </h4></b>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        Height="113px" Width="937px">
        <Columns>
         <asp:TemplateField>
                <ItemTemplate>



<table style="border: thick groove #C0C0C0;  color: #C0C0C0; font-size: medium; font-variant: normal; width:76% " >
 
  <tr>
    <td   
    align="center" <p style="width: 100%" align="justify"><asp:Label ID="Label2" runat="server" Text='<%# Bind("detail_desc") %>'></asp:Label></p>    
        </td>
    
  </tr>
 
</table>
   </ItemTemplate>
     </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:foodConnectionString %>" 
        SelectCommand="SELECT * FROM [health] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

