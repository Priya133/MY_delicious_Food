<%@ Page Title="" Language="C#" MasterPageFile="~/other_pages.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
        .style9
        {
            height: 76px;
            width: 384px;
        }
        .style10
        {
            width: 134px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
            width: 384px;
        }
        .style13
        {
            width: 384px;
        }
        .style14
        {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td>
<h4 style="color: #800000; font-size: 50px; font-style: inherit; font-weight: 900; font-family: Gabriola; width: 483px; 
                 height: 52px;" align="center"><u >Join Us As A Member</u></h4><br />

             <p>  Please  join our Memnership by registering yourself with us and by perchasing membership pakacge which is
                categorized into 3 main categories GOLD ,PLLATINUM and SILVER after purchasing the membership you will be eligible to 
                upload your Recipies and to make your Recipe Book
                </p> 
</td>
</tr>
</table>

    <table>
    
        <tr>
            <td class="style14">
                               <asp:Label ID="UserNamee" runat="server" Text="User Name" Font-Size="20px" Width="126px" 
                  ></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="login_uname" runat="server" AutoCompleteType="Disabled" 
                    EnableViewState="False" TextMode="SingleLine" ValidationGroup="login" 
                    Width="200" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="login_uname" ErrorMessage=" * Please Enter UserName" 
                    ForeColor="Red" ValidationGroup="login" Width="96px" Height="16px"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                     runat="server" ForeColor="Red" ErrorMessage=" * enter in char form" 
               ValidationExpression="^[a-z A-Z]*$" ControlToValidate="login_uname" Display="Dynamic" 
                     Width="119px"></asp:RegularExpressionValidator>
            </td>
            
            <td rowspan="5" >

            <%-- <h4 style="color: #800000; font-size: 20px; font-style: inherit; font-weight: 900; font-family: Gabriola; width: 483px; 
                 height: 52px;"><u >Member With Us</u></h4>

             <p>  Please  join our Memnership by registering yourself with us and by perchasing membership pakacge which is
                categorized into 3 main categories GOLD ,PLLATINUM and SILVER after purchasing the membership you will be eligible to 
                upload your Recipies and to make your Recipe Book
                </p> 
                --%>
                </td>
        </tr>
        <tr>
            <td class="style14">
                              <asp:Label ID="Passwordd" runat="server" Text="Password" Font-Size="20px" 
                    Width="120px" ></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="login_pwd" runat="server" EnableViewState="False" 
                    TextMode="Password" ValidationGroup="login" Width="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="login_pwd" ErrorMessage=" * Please Enter Password" 
                    ForeColor="Red" ValidationGroup="login" Width="175px"></asp:RequiredFieldValidator>
                <br />
</td>
            
        </tr>
        <tr>
            <td class="style10">
               <asp:Label ID="Label1" runat="server" Text="Select" Font-Size="20px" 
                    Width="82px" ></asp:Label>            </td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Join Membership</asp:ListItem>
                    <asp:ListItem>Already A Member</asp:ListItem>
                    <asp:ListItem>Non Of Above</asp:ListItem>


                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="login_pwd" ErrorMessage=" * Please select" 
                    ForeColor="Red" ValidationGroup="login" Width="93px"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        <tr>
            <td class="style14">
             
            <td class="style9">
               
                <br />
                  &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Font-Size="20px" 
                    Text="Remember Me" Width="202px"  />
                <br />
                <br />
                  
                   &nbsp;
                  
                <asp:LinkButton ID="LinkButton1" runat="server"  Font-Size="20px" 
                    onclick="LinkButton1_Click" 
                    PostBackUrl="~/forget_pasword.aspx" ForeColor="Maroon" 
                    Text="Recover Your Passward" Font-Bold="True"></asp:LinkButton >
   <br />
                <br />&nbsp; 
                <asp:Button ID="loginbtn_submit" runat="server" 
                    OnClick="loginbtn_submit_Click" style="height: 26px" ForeColor="#FFFFCC" 
                    Text="Submit" ValidationGroup="login" 
                   BackColor="Maroon"  Font-Size="20px"  />
            
            </td>
            <td>
            
            
            
                &nbsp;</td>
        </tr>
        <caption>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </caption>
        <tr>
            <td class="style14">
            </td>
            <td class="style9">
                &nbsp;
                <a href="register.aspx"  ><h2 style="color: #800000" >New User Register Here </h2></a></td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>

</asp:Content>

