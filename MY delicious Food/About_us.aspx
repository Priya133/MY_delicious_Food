<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="About_us.aspx.cs" Inherits="About_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 213px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>

<tr><td class="style2">
               <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola"  >Our Address </h4>
 </td>
 <td>
   <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola"  >&nbsp;&nbsp; Miscellaneous Info</h4>
   
 </td>
 </tr>
 <tr>
<td class="style2" >
              Country:India<br />
              City:Jalandhar
              <br>
              Zip Code:144001<br>
              Telephone:+0181 5635600<br>
              +081 5635610<br>
              
              E-Mail:  <a href="#">mydeliciousfood@gmail.com</a>
             
         </td>
         <td>

                       <p style="width: 80%"> For all you fans of The Chew, this is a wonderful trea deliver recipes for dishes that are sure to make you 
              very happy and tantalize your taste buds, while dishing on the moments in their lives that you’d never dream of.
              “Go ahead and take a look-you’re gonna love it.” Not many books do that. If you do take a look you will love that you did.
      </p>
        </td></tr>
</table>
        
            <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola"  >Feedback Form</h4>
 
         
          <form id="ContactForm" action="#">
           
            <table>
            <tr>
              <td>Your Name:</td>
               <td>  <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a"></asp:TextBox>  
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                       ForeColor="Red" ErrorMessage=" *  Name Required" 
                        ControlToValidate="TextBox1" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td> 
              
              <td rowspan="4">
              
              
                  <asp:Image ID="Image1" runat="server" Height="166px" 
                      ImageUrl="~/images/eecrheadingb.jpg" Width="225px" /></td>
              </tr>
              <tr>
              <td>
              Your E-mail:
              </td>
              <td>
                 <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="a"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  Display="Dynamic" 
                      ControlToValidate="TextBox2" ErrorMessage=" *  Email required" 
                      ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator_3" 
                            runat="server" ControlToValidate="TextBox2" Display="Dynamic" 
             ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="282px" 
                      ValidationGroup="a">*Email Format Required</asp:RegularExpressionValidator>
             </td></tr>
               <tr>
              <td>Your Contact :</td>
               <td>  <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="a"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" 
                       ControlToValidate="TextBox3" ErrorMessage=" *  Contact required" 
                       ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                     runat="server" ForeColor="Red" ErrorMessage=" * enter in numeric form" 
               ValidationExpression="^[0-9]*$" ControlToValidate="TextBox3" Display="Dynamic" 
                     Width="284px" ValidationGroup="a"></asp:RegularExpressionValidator>
              </td>
              </tr>
              <tr>
              <td>
              Your Message:
              </td>
              <td>
                 <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                      ValidationGroup="a"></asp:TextBox>  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ForeColor="Red" ErrorMessage=" *  Message Required" 
                        ControlToValidate="TextBox4" ValidationGroup="a"></asp:RequiredFieldValidator>
              </td>
              </tr><tr>
              <td></td>
              <td>
                  &nbsp;<asp:Button 
                    ID="Button1" runat="server" Text="Send" BackColor="Maroon"    
                      Font-Bold="True" ForeColor="#FFFFCC"
                    onclick="Button1_Click" Width="62px" ValidationGroup="a"  />
                   </td> </tr>
                    </table>

                  
         
    </form>
</asp:Content>

