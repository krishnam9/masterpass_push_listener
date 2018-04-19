<html>
<head>
<title>Krishnam</title>
</head>
<body>


		<script type="text/javascript" src="https://sandbox.masterpass.com/integration/merchant.js"></script>
			
			
		<a href="#" onClick="launchUI()"> 
			<img src="https://www.mastercard.com/mc_us/wallet/img/en/US/mcpp_wllt_btn_chk_147x034px.png" />
		</a>
		



	<script type="text/javascript">
		function launchUI() {// merchant configuration parameters 
	
			masterpass.checkout({
		        "checkoutId": "a4a6w4vd3oxx6ih55dqw41ihpq79jnhalo",
		        "allowedCardTypes": ["master,amex,diners,discover,jcb,maestro,visa"], 
		        "amount": "789.53",
		        "currency": "USD",
		        "cartId": "6a7804b7-6e6f-4ec3-ac1c-f79517040829",
			"cvc2Support": true,
			"validityPeriodMinutes":30
			});
		}
	</script>
</body>
</html>
