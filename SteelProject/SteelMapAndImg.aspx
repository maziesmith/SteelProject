<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SteelMapAndImg.aspx.cs" Inherits="SteelProject.SteelMapAndImg" %>

<!DOCTYPE html>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #location {
            width: 400px;
            height: 400px;
        }
    </style>
</head>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>

<body>

    <form runat="server">
        <asp:FileUpload ID="imgUpload" runat="server"/> <br />
        
        <asp:Button ID="btnUpImg" Text="Upload" OnClick="Upload_Click" runat="server" /> <br />

        <asp:Image ID="shownUpImg" runat="server" />
    </form>
    <div id="location"></div>
</body>
    <script type="text/javascript">
        var map;
        function initialize() {
            var mapOptions = {
                zoom: 18,
                center: new google.maps.LatLng(10.8019402, 106.689199)
            };
            map = new google.maps.Map(document.getElementById('location'), mapOptions);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
</script>
</html>
