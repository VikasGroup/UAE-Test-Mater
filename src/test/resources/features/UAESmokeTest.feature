Feature: UAE smoke test

@Pass 
Scenario Outline: Test case 01, 02, 03, 04
Given user direct to the site
When user click on Login or Register button
And user enter a valid ID or email "<email_ID>"
And user enter a password "<password>"
Then user click on login button
And validate the landing page "<page _link>"


Examples:
    |email_ID             | password |page _link                   |
    |CU567113             |T@stpw120  |https://www.qn-uae.ae/en|
    |testvikasretail@yopmail.com|T@stpw120 |https://www.qn-uae.ae/en|
   	|HD812554             |T@stpw120    |https://www.qn-uae.ae/en|
    |testvikasir@yopmail.com|T@stpw120 |https://www.qn-uae.ae/en|
    
    
@Reg
Scenario Outline: Test case 05

Given user direct to the site
When user click on Login or Register button
And user click on become a Bus Asso
And user select registration type "<Reg_Type>"
And user enter referrer ir id "<IR_ID>"
And user enter name "<Title>" "<FName>" "<Lname>"
And user select date of birth "<BDAY>"
And user select language "<Lang>"
And user enter mobile phone no "<Mob_no>"
And user enter email Address "<Email>" "<Re_Email>" 
And user enter PWD "<PWD>" "<Re_PWD>" 
And user enter Address "<Address>" "<City>" "<PostCode>"
Then Accept terms and conditions
And Enter ecard details and validate "<EcardNo>" "<PIN>"
And Click on confirm button
Then Validate the Auto Login "<Autologin>"

Examples:
    |IR_ID   |Reg_Type  |Title|FName|Lname|BDAY      |Lang   |Mob_no      |Email         |Re_Email      |PWD     |Re_PWD  |Address|City|PostCode|EcardNo       |PIN   |Autologin          |
    |HD812554|Individual|Mr   |test |vikas|04/10/1985|English|971000000028|osura@vikas.lk|osura@vikas.lk|Test@135|Test@135|test   |test|0000    |TESTING0000001|PRDECT|Welcome! TEST VIKAS|
      	
 @Reg
Scenario Outline: Test case 06
Given user direct to the site
When user click on Login or Register button
And user click on become a Bus Asso
And user select registration type "<Reg_Type>"
And user enter referrer ir id "<IR_ID>"
And user enter conpany details "<ComName>" "<Desig>" "<ContPer>"
And user select language "<Lang>"
And user enter mobile phone no "<Mob_no>" 
And user enter email Address "<Email>" "<Re_Email>" 
And user enter PWD "<PWD>" "<Re_PWD>" 
And user enter Address "<Address>" "<City>" "<PostCode>"
Then Accept terms and conditions
And Enter ecard details and validate "<EcardNo>" "<PIN>"
And Click on confirm button
Then Validate the Auto Login "<Autologin>"

Examples:
    |IR_ID   |Reg_Type|ComName     |Desig|ContPer|Lang   |Mob_no      |Email         |Re_Email      |PWD     |Re_PWD  |Address|City|PostCode|EcardNo       |PIN   |Autologin            |
    |HD812554|Company |Test Company|test |test   |English|971000000029|osura@vikas.lk|osura@vikas.lk|Test@135|Test@135|test   |test|0000    |TESTING0000002|PRDECT|Welcome! TEST COMPANY|
             	
@Reg
Scenario Outline: Test case 07
Given user direct to the site
When user click on Login or Register button
And user click on become a Retail Customer
And user enter referrer ir id "<IR_ID>"
And user enter name "<Title>" "<FName>" "<Lname>"
And user select date of birth "<BDAY>"
And user select language "<Lang>"
And user enter mobile phone no "<Mob_no>" 
And user enter email Address "<Email>" "<Re_Email>" 
And user enter PWD "<PWD>" "<Re_PWD>" 
And user enter retail Address "<Address>" "<City>" "<PostCode>"
And Click on annonymous confirm button
Then Validate the Auto Login "<Autologin>"

Examples:
    |IR_ID   |Title|FName|Lname  |BDAY      |Lang   |Mob_no      |Email         |Re_Email      |PWD     |Re_PWD  |Address|City|PostCode|Autologin            |
    |HD812554|Mr   |test |vikasRC|04/10/1985|English|971000000011|osura@vikas.lk|osura@vikas.lk|Test@135|Test@135|test   |test|0000    |Welcome! TEST VIKASRC|
      	
      	
@Reg
Scenario Outline: Test case 08
Given user direct to the site
When user click on Login or Register button
And user enter valid credentials "<IR_ID>" "<PWD>"  
And user empty the cart  
And user click on products tab
And user click on products link
And user add products to the cart
And user click on shopping cart
And user click on checkout button 
And select delivery option and click checkout "<DE_OPTION>"
And User distribute the BVs and click on countinue
And Enter purchase ecard details and validate "<EcardNo>" "<PIN>"
Then Validate the Auto Login "<Autologin>"

  
Examples:
    |IR_ID   |PWD     | DE_OPTION|EcardNo       |PIN   |Autologin                     |    
	|HD812553|testpw  |          |TESTING0000003|PRDECT|Welcome! RUFA SAR|
	
@Reg
Scenario Outline: Test case 09
Given user direct to the site
When user click on Login or Register button
And user enter valid credentials "<IR_ID>" "<PWD>" 
And user empty the cart  
And user click on products tab
And user click on products link
And user add products to the cart
And user click on shopping cart
And user click on checkout button 
And select delivery option and click checkout "<DE_OPTION>"
And Enter purchase ecard details and validate "<EcardNo>" "<PIN>"
Then Validate the Auto Login "<Autologin>"

  
Examples:
    |IR_ID   |PWD     | DE_OPTION|EcardNo       |PIN   |Autologin               |   
	|CU567113|T@stpw120|          |TESTING0000004|PRDECT|Welcome! SMOKETEST VIKAS|
      	
@Reg	
Scenario Outline: Test case 10
Given user direct to the site
When user click on Login or Register button
And user enter valid credentials "<IR_ID>" "<PWD>"  
And user empty the cart 
And user click on products tab
And user click on products link
And user add products to the cart
And user click on shopping cart
And user click on checkout button 
And select delivery option and click checkout "<DE_OPTION>"  
And User distribute the BVs and click on countinue
And user choose credit card option
#And Enter Credit card details "<C_Holder>" "<C_Num>" "<C_Month>" "<C_Year>" "<C_Sec_Cord>" 
#Then Validate the Auto Login "<Autologin>"
    
 Examples:
    |IR_ID   |PWD     |  DE_OPTION|C_Holder|C_Num           |C_Month|C_Year|C_Sec_Cord|  	
	|HD812554|T@stpw120|           |test    |4987654321098769|05     |17    |100       |   
	
@Reg
Scenario Outline: Test case 11
Given user direct to the site
When user click on Login or Register button
And user enter valid credentials "<IR_ID>" "<PWD>"
And user empty the cart   
And user click on products tab
And user click on products link
And user add products to the cart
And user click on shopping cart
And user click on checkout button 
And select delivery option and click checkout "<DE_OPTION>"  
And User distribute the BVs and click on countinue
And user choose Q Account option
#And User enter Q Account Pin "<QA_Pin>" 
#And user click on confirm button
#Then Validate the Auto Login "<Autologin>"
 
  Examples:
    |IR_ID   |PWD   |DE_OPTION|QA_Pin|Autologin|	
	|HD330342|testpw|         |qatest|         |

@Reg
Scenario Outline: Test case 12
Given user direct to the site
And user click on products tab
And user click on products link
And user add products to the cart
And user click on shopping cart
And user click on checkout button
And user click on become a Bus Asso
And user select registration type "<Reg_Type>"
And user enter referrer ir id "<IR_ID>"
And user enter name "<Title>" "<FName>" "<Lname>"
And user select date of birth "<BDAY>"
And user select language "<Lang>"
And user enter mobile phone no "<Mob_no>"
And user enter email Address "<Email>" "<Re_Email>" 
And user enter PWD "<PWD>" "<Re_PWD>" 
And user enter Address "<Address>" "<City>" "<PostCode>"
Then Accept terms and conditions
And select delivery option and click checkout "<DE_OPTION>"
And User distribute the BVs and click on countinue
And Enter purchase ecard details and validate "<EcardNo>" "<PIN>"
Then Validate the Auto Login "<Autologin>"


Examples:
    |IR_ID   |Reg_Type  |Title|FName|Lname|BDAY      |Lang   |Mob_no      |Email         |Re_Email      |PWD     |Re_PWD  |Address|City|PostCode|EcardNo       |PIN   |Autologin          |
    |HD333649|Individual|Mr   |test |vikas|04/10/1985|English|971852900000|osura@vikas.lk|osura@vikas.lk|Test@135|Test@135|test   |test|0000    |TESTING0000005|QECTST|Welcome! test vikas|
    

@Reg
Scenario Outline: Test case 13
Given user direct to the site
And user click on products tab
And user click on products link
And user add products to the cart
And user click on shopping cart
And user click on checkout button 
And user click on become a Retail Customer
And user enter referrer ir id "<IR_ID>"
And user enter name "<Title>" "<FName>" "<Lname>"
And user select date of birth "<BDAY>"
And user select language "<Lang>"
And user enter mobile phone no "<Mob_no>" 
And user enter email Address "<Email>" "<Re_Email>" 
And user enter PWD "<PWD>" "<Re_PWD>" 
And user enter retail Address "<Address>" "<City>" "<PostCode>"
And Click on annonymous confirm button
And select delivery option and click checkout "<DE_OPTION>"
And Enter ecard details and validate "<EcardNo>" "<PIN>"
Then Validate the Auto Login "<Autologin>"

Examples:
    |IR_ID   |Reg_Type  |Title|FName|Lname|BDAY      |Lang   |Mob_no      |Email         |Re_Email      |PWD     |Re_PWD  |Address|City|PostCode|EcardNo       |PIN   |Autologin          |
    |HD333649|Individual|Mr   |test |vikas|04/10/1985|English|971852433553|osura@vikas.lk|osura@vikas.lk|Test@135|Test@135|test   |test|0000    |TESTING0000006|QECTST|Welcome! test vikas|
      	
			
@Reg	
Scenario Outline: Test case 14

Given user direct to the site
When user click on Login or Register button
And user click on forgot pwd
And user enter customer IR ID "<CUS_ID>"
And click on submit button 
Then Click on countinue button 
And Click on Ok button on popup
Examples:
    |CUS_ID   | 
	|HD333649 | 
 
@RegS	
Scenario Outline: Test case 15
Given user direct to the site
When user click on Login or Register button
And user enter valid credentials "<IR_ID>" "<PWD>" 
And click on redeem button 
And add redeem products to cart
And user click on shopping cart
And user accept redeem checkout page
Then Validate the Auto Login "<Autologin>"

Examples:
    |IR_ID   |PWD     |Autologin                     |
 	|HD812554|testpw  |Welcome! RUFA SA|
  	
@Reg
Scenario Outline: Test case 16 

Given user direct to the site
When user click on Login or Register button
And user enter valid credentials "<IR_ID>" "<PWD>"  
Then click on virtual office link 
And user direct to the VO page "<URL>" 

Examples:
    |IR_ID   |PWD     |URL|
    |HD333649|Test@135|https://portal.qion-ltd.net/singaporebeta/#/DashBoard|	
	   	
      	