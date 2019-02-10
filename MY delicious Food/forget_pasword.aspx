<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="forget_pasword.aspx.cs" Inherits="forget_pasword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
    <td>
    <br />
    <h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola">Recover</h4></td>
    <td><h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola; height: 20px;"> &nbsp;&nbsp;&nbsp; your </h4>
        <p>&nbsp;</p></td>
        <td><h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola; height: 20px;">&nbsp;&nbsp; Password</h4>
        <p>&nbsp;</p></td>
    </tr>
        <tr>
            <td class="style1">
                &nbsp;<asp:Label ID="UserNamee" runat="server" Text="User Name" Font-Size="20px"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="login_uname" runat="server" AutoCompleteType="Disabled" 
                    EnableViewState="False" TextMode="SingleLine" ValidationGroup="a" 
                    Width="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="login_uname" ErrorMessage=" * Please Enter UserName" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            
            <td rowspan="3" >
              <asp:Image ID="Image1" runat="server" Height="143px" 
                    ImageUrl="~/images/a-z.jpg" Width="191px" /></td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;<asp:Label ID="Passwordd" runat="server" Text=" Security Question" Font-Size="20px"></asp:Label>
                &nbsp;</td>
            <td class="style3">
               <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="a">
                     <asp:ListItem>who was your Favourite Teacher</asp:ListItem>
                     <asp:ListItem>which was the your Birth Place</asp:ListItem>
                     <asp:ListItem>which one is your favourite Color</asp:ListItem>
                     <asp:ListItem>What is the Name of your Pet</asp:ListItem>

                 </asp:DropDownList> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="DropDownList1"
              ErrorMessage="* select Question" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
              
            </td>
            
        </tr>
        <tr>
            <td class="style1">
                &nbsp;<asp:Label ID="Label1" runat="server" Text=" Security Answer" Font-Size="20px"></asp:Label>
                &nbsp;&nbsp;
            </td>
            <td class="style3">
             
               <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox1"
              ErrorMessage="* Answer Required" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
             
            </td>
            
        </tr>
        <tr>
            <td>
             
            <td class="style3">
               
                <br />&nbsp; 
                <asp:Button ID="loginbtn_submit" runat="server" BorderColor="White" 
                    OnClick="loginbtn_submit_Click" style="height: 26px" 
                    Text="Submit" ValidationGroup="a" BackColor="Black" 
                    ForeColor="#CCCCCC" Font-Size="20px"  />
            
            </td>
        </tr>

        <caption>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </caption>
        <tr>
            <td class="style1">
            </td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <h4>
                    <asp:Label ID="Label2" runat="server" Width="93px" ></asp:Label></h4>
                </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>

</asp:Content>

