<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page.master" AutoEventWireup="true" CodeFile="Admin_add_cookig_tips.aspx.cs" Inherits="Admin_add_cookig_tips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
    <tr>
    <td > 
        <br />
        <br />
      
        <br />
        </td>
    <td class="style7">
        <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola; width: 483px; height: 52px;">
        <u > Add Cooking Tips&nbsp; </u></h4>
        
        <p>&nbsp;</p></td>
    </tr>
        
        <tr>
            <td class="style10">
               <asp:Label ID="Label6" runat="server" Text="Heading of Tip" Font-Size="20px" 
                    Width="142px" ></asp:Label>            </td>
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
               <asp:Label ID="Label3" runat="server" Text="Discription" Font-Size="20px" 
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
               <asp:Label ID="Label4" runat="server" Text="Detailed Discription" Font-Size="20px" 
                    Width="173px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage=" * Please enter" 
                    ForeColor="Red" ValidationGroup="login" Width="185px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style10">
               <asp:Label ID="Label5" runat="server" Text="Precautions" Font-Size="20px" 
                    Width="146px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
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

