package cucumber.step;

import io.cucumber.java.en.Then;
import pageobject.EveningDressesPage;

public class EveningDressSteps {
    @Then("I see 'Evening Dresses' title in evening dresses page")
    public void i_see_title_in_evening_dresses_page() {
        new EveningDressesPage(CommonSteps.getDriver()).getEveningPageTitle();
    }
}
