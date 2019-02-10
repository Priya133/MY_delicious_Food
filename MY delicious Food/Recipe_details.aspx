<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="Recipe_details.aspx.cs" Inherits="Recipe_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DataList ID="DataList1" runat="server"  
              CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" 
        RepeatColumns="1" RepeatDirection="Horizontal"
            Width="600px"  ForeColor="Maroon">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#790000" Font-Bold="True" Font-Size="X-Large" ForeColor="#DED8A9"
                HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Gabriola" />
            <HeaderTemplate>
                Recipie Details</HeaderTemplate>
            <ItemStyle   />



            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("recipe_id") %>' Visible="False"></asp:Label><br />
                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("Recipie_Name") %>' Font-Bold="True" ForeColor="Maroon" Font-Size="Larger"></asp:Label><br />
               
             
            <iframe width="550" height="450" src='<%# Eval("Video_Link") %>'  frameborder="3px" allowfullscreen  ></iframe><br />
                <b>Discription:</b>
               <asp:Label ID="lblCName" Font-Bold="True" runat="server" Text='<%# Bind("Back_story") %>'></asp:Label><br />
              
                
                <b>Posted By:</b>
                 <asp:Image ID="imgEmp" runat="server" Width="50px" Height="40px" ImageUrl='<%# Bind("Uploader_image", "~/user_img/{0}") %>'/>
  <br />
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Text='<%# Bind("Uploaded_By") %>'></asp:Label><br />
               
               <b> Posted on:</b>
                <asp:Label ID="lblCity" runat="server" Font-Bold="True" Text=' <%# Bind("uploading_time") %>'></asp:Label><br />
                 <b>Ingredients:</b><br />
                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Text=' <%# Bind("Ingredients") %>'></asp:Label><br />

                     <b>Process Of Making:</b><br />
                      <asp:Label ID="Label4" runat="server" Font-Bold="True" Text=' <%# Bind("making_process") %>'></asp:Label><br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" Width="40px" ImageUrl="~/images/Facebook1111.jpg" OnClick="like" />
               <asp:Label ID="Label5" runat="server" Font-Bold="True" Text=' <%# Bind("Likes") %>' ></asp:Label><br />
 <asp:Button ID="Button1" runat="server" Text="comment" BorderColor="Maroon" ForeColor="#DED8A9" BackColor="Maroon"  OnClick="comment"  />
               
            </ItemTemplate>


        </asp:DataList>
  
   
      

    <asp:Label ID="Label6" runat="server" Text="Leave Comment" Visible="False" Font-Bold="True" 
        Font-Size="Large" ForeColor="Maroon" ></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox>
<br />

   <asp:Button ID="Button1" runat="server" Text="submit" BorderColor="Maroon" 
        ForeColor="#DED8A9" BackColor="Maroon" onclick="Button1_Click"  Visible="False" />


<asp:DataList ID="DataList2" runat="server"  BorderColor="#666666"
            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" 
        RepeatColumns="1" RepeatDirection="Horizontal"
            Width="600px"  ForeColor="Maroon" Visible="False">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#790000" Font-Bold="True" Font-Size="X-Large" ForeColor="#DED8A9"
                HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Gabriola" />
            <HeaderTemplate>
                comments</HeaderTemplate>
            <ItemStyle  BorderWidth="2px" />



            <ItemTemplate>
            <table>
            <tr>
            <td><b>Posted BY:</b><br />
            <asp:Image ID="imgEmp" runat="server" Width="50px" Height="40px" ImageUrl='<%# Bind("cmt_by_img", "~/user_img/{0}") %>'/>
  <br />
                  <asp:Label ID="Label7" runat="server" Text='<%# Bind("cmt_by") %>' ></asp:Label><br />
               
                </td>
                
            <td>
             <asp:Label ID="Label1" runat="server" Text='<%# Bind("comment") %>' ></asp:Label><br />
                 </td>
                 
                </tr>
             
                   </table>     
            </ItemTemplate>


        </asp:DataList>
   



    </asp:Content>

