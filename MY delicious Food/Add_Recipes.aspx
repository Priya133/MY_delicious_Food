<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="Add_Recipes.aspx.cs" Inherits="Add_Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
    <tr>
    <td > 
    <br />
        <asp:Image ID="Image1" runat="server" Height="105px" Width="166px" /><br />
        <asp:Label ID="Label2" runat="server" Font-Size="20px" ForeColor="Maroon"></asp:Label>
      
        <br />
        </td>
    <td class="style7">
        <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola; width: 483px; height: 52px;">
        <u > Add Recipe&nbsp; </u></h4>
        
        <p>&nbsp;</p></td>
    </tr>
        <tr>
            <td class="style1">
                               <asp:Label ID="UserNamee" runat="server" Text="Recipe Type" Font-Size="20px" Width="126px" 
                  ></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage=" * Please select " 
                    ForeColor="Red" ValidationGroup="login" Width="279px"></asp:RequiredFieldValidator>
            </td>
            
            <td rowspan="3" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
               <asp:Label ID="Label6" runat="server" Text="Recipe Name" Font-Size="20px" 
                    Width="121px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage=" * Please enter" 
                    ForeColor="Red" ValidationGroup="login" Width="185px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style1">
                              <asp:Label ID="Passwordd" runat="server" Text="image" Font-Size="20px" 
                    Width="120px" ></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage=" * Please Upload" 
                    ForeColor="Red" ValidationGroup="login" Width="281px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style10">
               <asp:Label ID="Label1" runat="server" Text="Video Link" Font-Size="20px" 
                    Width="121px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage=" * Please enter" 
                    ForeColor="Red" ValidationGroup="login" Width="185px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style10">
               <asp:Label ID="Label3" runat="server" Text="ingredients" Font-Size="20px" 
                    Width="121px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage=" * Please enter" 
                    ForeColor="Red" ValidationGroup="login" Width="185px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style10">
               <asp:Label ID="Label4" runat="server" Text="Making Process" Font-Size="20px" 
                    Width="146px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage=" * Please enter" 
                    ForeColor="Red" ValidationGroup="login" Width="185px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style10">
               <asp:Label ID="Label5" runat="server" Text="Back Story" Font-Size="20px" 
                    Width="146px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage=" * Please enter" 
                    ForeColor="Red" ValidationGroup="login" Width="185px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style1">
             
            <td class="style9">
               
                <br />&nbsp; 
                <asp:Button ID="loginbtn_submit" runat="server" ForeColor="#FFFFCC" 
                    OnClick="loginbtn_submit_Click" style="height: 26px" 
                    Text="Submit" ValidationGroup="login" 
                    BackColor="Maroon"  Font-Size="20px" Width="80px" />
            
            </td>
            <td>
            
            
            
                &nbsp;</td>
        </tr>
        <caption>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </caption>
        <tr>
            <td class="style1">
            </td>
            <td class="style9">
                &nbsp;
                </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
</asp:Content>

