<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="nivo_slider_demo_homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nivo Slider Demo</title>
    <link rel="stylesheet" href="../themes/default/default.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
</head>
<body style="background:#800000;">
     <div id="wrapper" 
         
         style="background-color: #800000; width: auto; height: auto;">
        
        <div class="slider-wrapper theme-default" style="background-color: #800000">
            <div id="slider" class="nivoSlider" style="background-color: #800000">
                <img src="images/Mohit+Chauhan+mohitchauhan.jpg" data-thumb="images/Mohit+Chauhan+mohitchauhan.jpg" alt=""  />
                <img src="images/Alka%20Yagnik-249087.jpg"  data-thumb="images/Alka%20Yagnik-249087.jpg" alt=""  />
                <img src="images/Asha-Bhosle.jpg"  data-thumb="images/Asha-Bhosle.jpg" alt="" />
                <img src="images/kishore.jpg"  data-thumb="images/kishore.jpg" alt=""  />

                

                   </div>
           
        </div>

    </div>
    <script type="text/javascript" src="scripts/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="../jquery.nivo.slider.js"></script>
   
   
    
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
</body>
</html>
