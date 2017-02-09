package net.uae.test.uae.test.steps;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;



import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Managed;
import net.thucydides.core.annotations.Steps;
import net.uae.pgobjects.uae.pgobjects.pages.AnonymouspurchaseReg;
import net.uae.pgobjects.uae.pgobjects.pages.CheckoutPgObject;
import net.uae.pgobjects.uae.pgobjects.pages.LoginPage;
import net.uae.pgobjects.uae.pgobjects.pages.ProductsPgObjects;
import net.uae.pgobjects.uae.pgobjects.pages.VODashboard;
import net.uae.pgobjects.uae.pgobjects.pages.WirecardCheckoutPage;

public class IRandRetailPurchase {
	@Steps
	@Managed
	WebDriver driver;
	LoginPage loginPage;
	VODashboard vODashboard;
	ProductsPgObjects productsPgObjects;
	CheckoutPgObject checkoutPgObject;
	WirecardCheckoutPage wirecardCheckoutPage;
	AnonymouspurchaseReg anonymouspurchaseReg;
	
	@When("^user enter valid credentials \"([^\"]*)\" \"([^\"]*)\"$")
	public void user_enter_valid_credentials(String arg1, String arg2) throws Throwable {
		Thread.sleep(4000);
		loginPage.enterUserName(arg1);
	    loginPage.enterpwd(arg2);
	    Thread.sleep(5000);
	    loginPage.clickLogin();
	    Thread.sleep(10000);
	}
	
	@When("^user click on products tab$")
	public void user_click_on_products_tab() throws Throwable {
	   vODashboard.clickproduct();
	 
	}

	@When("^user click on products link$")
	public void user_click_on_products_link() throws Throwable {
	   vODashboard.clickVTube();
	   Thread.sleep(2000);
	  
	}

	@When("^user add products to the cart$")
	public void user_add_products_to_the_cart() throws Throwable {
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		//jse.executeScript("window.scrollBy(0,100)", "");
		   Thread.sleep(3000);
	   productsPgObjects.clickProd1();
	   jse.executeScript("window.scrollBy(0,250)", "");
	   productsPgObjects.clickAdd2cart();
	}

	@When("^user click on shopping cart$")
	public void user_click_on_shopping_cart() throws Throwable {  
		Thread.sleep(2000);
	 productsPgObjects.clickCart();
	 Thread.sleep(2000);
	}

	@When("^user click on checkout button$")
	public void user_click_on_checkout_button() throws Throwable {
	   productsPgObjects.clickCheckOut();
	   Thread.sleep(2000);
	   checkoutPgObject.check1();
	   checkoutPgObject.check2();
	   checkoutPgObject.clickChkPro();
	   Thread.sleep(5000);
	}

	@When("^select delivery option and click checkout \"([^\"]*)\"$")
	public void select_delivery_option_and_click_checkout(String arg1) throws Throwable {
	   checkoutPgObject.clickcount_btn();
	   Thread.sleep(5000);
	 
	}

	@When("^User distribute the BVs and click on countinue$")
	public void user_distribute_the_BVs_and_click_on_countinue() throws Throwable {
	   checkoutPgObject.disributrBV();
	   /*checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();
	   checkoutPgObject.disributrBV();*/
	   
	   checkoutPgObject.clickProceed();
	   Thread.sleep(5000);
	 
	}

	@When("^Enter purchase ecard details and validate \"([^\"]*)\" \"([^\"]*)\"$")
	public void enter_purchase_ecard_details_and_validate(String arg1, String arg2) throws Throwable {
	  checkoutPgObject.enterEcard(arg1);
	  Thread.sleep(2000);
	  checkoutPgObject.enterEcardPin(arg2);
	  checkoutPgObject.clickValidate();
	  Thread.sleep(5000);
	  checkoutPgObject.clickEcardCon();
	  Thread.sleep(2000);
	}
	
	@When("^user choose credit card option$")
	public void user_choose_credit_card_option() throws Throwable {
	    checkoutPgObject.clickCC();
	    Thread.sleep(2000);
	    checkoutPgObject.clickCCIMG();
	    Thread.sleep(2000);
	}

	
	
	@When("^Enter Credit card details \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
	public void enter_Credit_card_details(String arg1, String arg2, String arg3, String arg4, String arg5) throws Throwable {
		 wirecardCheckoutPage.entername(arg1);
		   wirecardCheckoutPage.entercardNo(arg2);
		   wirecardCheckoutPage.selectmonth(arg3);
		   wirecardCheckoutPage.selectYear(arg4);
		   wirecardCheckoutPage.enterSecCode(arg5);
		   Thread.sleep(2000);
		   wirecardCheckoutPage.entercardinfo();
	}
	
	@When("^user choose Q Account option$")
	public void user_choose_Q_Account_option() throws Throwable {
		checkoutPgObject.clickQAcc();
	}

	@When("^User enter Q Account Pin \"([^\"]*)\"$")
	public void user_enter_Q_Account_Pin(String arg1) throws Throwable {
		checkoutPgObject.enterQAPin(arg1);
		checkoutPgObject.chkQatc();
	}

	@When("^user click on confirm button$")
	public void user_click_on_confirm_button() throws Throwable {
		  checkoutPgObject.clkQaConfirm();
	}
	
	
}

