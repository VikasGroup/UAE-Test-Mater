package net.uae.test.uae.test.steps;

import java.util.ArrayList;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Managed;
import net.thucydides.core.annotations.Steps;
import net.uae.pgobjects.uae.pgobjects.pages.RedeemCheckoutPgObject;
import net.uae.pgobjects.uae.pgobjects.pages.RedeemHealthPgObject;
import net.uae.pgobjects.uae.pgobjects.pages.VODashboard;

public class RedemptionSteps {
	@Steps
	@Managed
	WebDriver driver;
	
	VODashboard vODashboard;
	RedeemHealthPgObject redeemHealthPgObject;
	RedeemCheckoutPgObject redeemCheckoutPgObject;
	
	@When("^click on redeem button$")
	public void click_on_redeem_button() throws Throwable {
	    vODashboard.clickRedeem();


	    
	    ArrayList<String> tabs2 = new ArrayList<String> (driver.getWindowHandles());
	    driver.switchTo().window(tabs2.get(0));
	    driver.close();
	    driver.switchTo().window(tabs2.get(1));
	    Thread.sleep(15000);
	}
	
	@When("^add redeem products to cart$")
	public void add_redeem_products_to_cart() throws Throwable {
	   redeemHealthPgObject.clickRedeemProducts(); 
	   Thread.sleep(5000);
	}
	@When("^user accept redeem checkout page$")
	public void user_accept_redeem_checkout_page() throws Throwable {
		 JavascriptExecutor jse = (JavascriptExecutor)driver;
		 jse.executeScript("window.scrollBy(0,400)", "");
	   redeemCheckoutPgObject.checkTandCs();
	   redeemCheckoutPgObject.clickCheckOut();
	   Thread.sleep(5000);
	   
	   jse.executeScript("window.scrollBy(0,500)", "");
	   redeemCheckoutPgObject.clickCountinue();
	   Thread.sleep(5000);
	   jse.executeScript("window.scrollBy(0,300)", "");
	   redeemCheckoutPgObject.clickConfirm();
	   Thread.sleep(10000);
	}
}
