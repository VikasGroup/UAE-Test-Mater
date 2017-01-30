package net.uae.test.uae.test;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;

@RunWith(CucumberWithSerenity.class)

@CucumberOptions(format = { "pretty", "json:target/cucumber.json" },features="src/test/resources/features/",glue="net.uae.test.uae.test.steps",tags="@Reg1")


public class TestRunner {

}
