<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Masterpass v7 PCI</title>


<style type="text/css">
h2 {
	font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;
}
div {
    width: 600px;
    border: 1px solid grey;
    border-radius: 5px;
    word-wrap: break-word;
}
body {
	font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;
}
</style>

</head>
<body>

 	<br><br><br><br>
	<center>
	<div style="text-align: center">

		<h2>v7 Standard Checkout - From API call - oAuth<br><br></h2>

		<!-- <script type="text/javascript" src="https://sandbox.masterpass.com/integration/merchant.js"></script> -->
			
		<script type="text/javascript" src="https://static.masterpass.com/integration/merchant.js"></script>
			
		<a href="#" onClick="launchUI()"> 
			<img src="https://www.mastercard.com/mc_us/wallet/img/en/US/mcpp_wllt_btn_chk_147x034px.png" />
		</a>
		
		<br><br>
	</div>
	</center>

	<script type="text/javascript">
		function launchUI() {// merchant configuration parameters 

			const
			myConfig = {
				checkoutId : 'bdfb8d5859b2460fbffb63b7ebfd1a92',
				cartId : '6a7804b7-6e6f-4ec3-ac1c-f79517040829',
				allowedCardTypes : [ "master", "amex", "diners", "discover", "jcb", "maestro", "visa" ],
				amount : "1002.99",
				currency : "USD",
				suppressShippingAddressEnable: "true" 

			}
			// launch masterpass UI 
			masterpass.checkout(myConfig);
		}
	</script>
</body>
</html>