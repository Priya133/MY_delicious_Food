<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="All_videos.aspx.cs" Inherits="All_videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:DataList ID="DataList1" runat="server"  BorderColor="#666666"
            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" 
        RepeatColumns="2" RepeatDirection="Horizontal"
            Width="600px" DataSourceID="SqlDataSource1" ForeColor="Maroon">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#790000" Font-Bold="True" Font-Size="X-Large" ForeColor="#DED8A9"
                HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Gabriola" />
            <HeaderTemplate>
                Recipies</HeaderTemplate>
            <ItemStyle  BorderWidth="2px" />



            <ItemTemplate>
                                  
                                  
<asp:Label ID="Label2" runat="server" Text='<%# Bind("Recipie_Name") %>' Font-Bold="True" ForeColor="Maroon" Font-Size="Larger"></asp:Label><br />
               
             
               <br />
                 <iframe width="330" height="330" src='<%# Eval("Video_Link") %>'  frameborder="3px" allowfullscreen  ></iframe><br />

                <b>Discription:</b>
               <p > <asp:Label ID="lblCName" Font-Bold="True" runat="server" Text='<%# Bind("Back_story") %>'></asp:Label><br />
                </p>
                
                
                         </ItemTemplate>


        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:foodConnectionString %>" 
        
        SelectCommand="SELECT [Recipie_Name], [Video_Link], [Back_story] FROM [recipes]">
    </asp:SqlDataSource>
</asp:Content>

