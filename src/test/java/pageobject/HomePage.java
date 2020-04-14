package pageobject;

import helper.PageHelper;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class HomePage extends PageHelper {
    private By searchBoxLocator = By.className("search_query");
    private By searchButtonLocator = By.cssSelector("#search_block_top button[type='submit']");
    public HomePage(WebDriver webDriver) {
        super(webDriver);
    }

    public HomePage typeSearchItem(String itemName) {
        setField(searchBoxLocator, itemName);
        return this;
    }

    public HomePage clickSearchButton() {
        clickOnElement(searchButtonLocator);
        return new HomePage(driver);
    }
}