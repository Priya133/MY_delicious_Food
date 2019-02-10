<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page.master" AutoEventWireup="true" CodeFile="admin_add_recipe_types.aspx.cs" Inherits="admin_add_recipe_types" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
    <td class="style12"></td>
    <td class="style7">
        <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola; width: 483px; height: 52px;">
        <u >Recipe Type</u></h4>
        <p>&nbsp;</p></td>
    </tr>
        <tr>
            <td class="style1">
                               <asp:Label ID="UserNamee" runat="server" Text="Recipe Type" Font-Size="20px" Width="126px" 
                  ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="login_uname" runat="server" AutoCompleteType="Disabled" 
                    EnableViewState="False" TextMode="SingleLine" ValidationGroup="login" 
                    Width="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="login_uname" ErrorMessage=" * Please Enter " 
                    ForeColor="Red" ValidationGroup="login" Width="279px"></asp:RequiredFieldValidator>
            </td>
            
            <td rowspan="3" >
                &nbsp;</td>
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
               <asp:Label ID="Label1" runat="server" Text="Discription" Font-Size="20px" 
                    Width="82px" ></asp:Label>            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage=" * Please enter" 
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

