package cucumber.step;

import io.cucumber.java.en.Given;
import pageobject.NavigationPage;

public class NavigationSteps {
    @Given("I hover over on 'WOMEN' tab in home page")
    public void i_hover_over_on_tab_in_home_page() {
        new NavigationPage(CommonSteps.getDriver()).hoverOverWomenTab();
    }

    @Given("I click on 'Evening Dresses' tab in navigation menu")
    public void i_click_on_tab_in_navigation_menu() {
        new NavigationPage(CommonSteps.getDriver()).clickOnEveningDressesLink();
    }
}
