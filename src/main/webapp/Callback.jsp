<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>
    	Masterpass Standard Checkout Flow
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="Content/Site.css">
    <script type="text/javascript" src="Scripts/jquery-1.5.1.js"></script>
    <script type="text/javascript" src="Scripts/tooltips/commonToolTips.js"></script>
    <script type="text/javascript" src="Scripts/tooltips/jquery-1.3.2.min.js"></script> <!-- Needed for tooltips only -->
	<script type="text/javascript" src="Scripts/tooltips/jquery.qtip-1.0.0-rc3.min.js"></script>
</head>
<body class="postCheckout">
    <div class="page">
        <div id="header">
            <div id="title">
                <h1>
                    Masterpass Standard Checkout Flow </h1>
            </div>
            <div id="logindisplay">
                &nbsp;
            </div>
        </div>
        <div id="main">
            <h1>
                Received Callback from Wallet Site
            </h1>
            <p>
                Data received from the Callback URL<br/>
                Use the Request Token and the Verifier to get the Access Token. The Checkout Resource URL will be used to get the users shipping and/or billing infomation after the Access Token is Received.
            </p>

             <fieldset>
            <legend>Data from the Callback URL</legend>
            <table>
                <tbody>
                    <tr>
                        <th>
                        Request Token 
<!--                         <span class='tooltip' id='requestToken'>[?]</span> -->
                        </th>
                        <td>
                             "${param.oauth_token}"

                        </td>
                    </tr>
                    <tr>
                        <th>
                            Request Token Verifier 
<!--                             <span class='tooltip' id='verifier'>[?]</span> -->
                        </th>
                        <td>
                           "${param.oauth_verifier}"
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Checkout Resource URL 
<!--                             <span class='tooltip' id='checkoutURL'>[?]</span> -->
                        </th>
                        <td>
                            "${param.checkout_resource_url}""
                        </td>
                    </tr>
                    <tr>
                     <th>
                            Checkout Id 
<!--                             <span class='tooltip' id='checkoutURL'>[?]</span> -->
                        </th>
                    <td>
                   "${param.checkoutId}"
                    </td>
                    
                    </tr>
                    
                </tbody>
               
            </table>
            </fieldset>
                      <form method="POST" action="/welcome">
	             <p>
                    <input value="Retrieve Access Token" type="submit"/>
                 
	            </p>
            </form>
        </div>
        <div id="footer">
        </div>
    </div>
    
</body>
</html>