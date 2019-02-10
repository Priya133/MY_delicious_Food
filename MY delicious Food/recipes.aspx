<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="recipes.aspx.cs" Inherits="recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DataList ID="DataList1" runat="server"  BorderColor="#666666"
            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" 
        RepeatColumns="3" RepeatDirection="Horizontal"
            Width="600px" DataSourceID="SqlDataSource1" ForeColor="Maroon">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#790000" Font-Bold="True" Font-Size="X-Large" ForeColor="#DED8A9"
                HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Gabriola" />
            <HeaderTemplate>
                Recipies</HeaderTemplate>
            <ItemStyle  BorderWidth="2px" />



            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("recipe_id") %>' Visible="False"></asp:Label><br />
                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("Recipie_Name") %>' Font-Bold="True" ForeColor="Maroon" Font-Size="Larger"></asp:Label><br />
               
             
                <asp:Image ID="imgEmp" runat="server" Width="220px" Height="180px" ImageUrl='<%# Bind("Recipie_image", "~/recipe_img/{0}") %>'/><br />
                <b>Discription:</b>
               <p > <asp:Label ID="lblCName" Font-Bold="True" runat="server" Text='<%# Bind("Back_story") %>'></asp:Label><br />
                </p>
                
                
                <b>Posted By:</b>
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Text='<%# Bind("Uploaded_By") %>'></asp:Label><br />
               
               <b> Posted on:</b>
                <asp:Label ID="lblCity" runat="server" Font-Bold="True" Text=' <%# Bind("uploading_time") %>'></asp:Label><br />
                <asp:Button ID="Button1" runat="server" Text="View More" BorderColor="Maroon" ForeColor="#DED8A9" BackColor="Maroon"   OnClick="myclick"/>
               
            </ItemTemplate>


        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:foodConnectionString %>" 
        SelectCommand="SELECT * FROM [recipes] WHERE ([Type] = @Type)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Type" QueryStringField="typeid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

