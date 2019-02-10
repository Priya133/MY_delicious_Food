<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul>
					<li>
						<h2><a href="All_Recipes.aspx">Featured Recipes</a></h2>
						<a href="All_Recipes.aspx"><img src="images/featured.jpg" alt="Image"></a>
					</li>
					<li>
						<h2><a href="Tips_Tricks.aspx">Health &amp cooking Tips</a></h2>
						<a href="Tips_Tricks.aspx"><img src="images/10.jpg" alt="Image"></a>
					</li>
				</ul>
				<ul>
					<li>
						<h2><a href="All_videos.aspx">Videos</a></h2>
						<a href="All_videos.aspx"><img src="images/20.jpg" alt="Image"></a>
					</li>
					<li>
						<h2><a href="About_us.aspx">FeedBack</a></h2>
						<a href="About_us.aspx"><img src="images/30.jpg" alt="Image"></a>
					</li>
				</ul>
</asp:Content>

