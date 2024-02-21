import { Given, When, Then } from "@wdio/cucumber-framework";

import {browser, $} from "@wdio/globals";

Given("I am on Login page", async function() {
    await browser.navigateTo("https://the-internet.herokuapp.com/login");
});

When('I enter {string} username', async function(username) {
    await $("#username").setValue(username);
});


When('I enter {string} password', async function(password) {
    const passwordInput = await $("#password");
    await passwordInput.setValue(password);
});


When('I press on Login button', async function() {
    const button = await $("button[type=submit]");
    await button.click();
});

Then('I see a message {string}', async function(message) {
    const flashMessage = await $("#flash");
    await expect(flashMessage)
        .toHaveText(expect.stringContaining(message));
});

Then('I {word} see the Logout button', async function(visibility) {
    if (visibility === "do"){
        await expect($("i*=Logout")).toBeDisplayed();
    }else if (visibility ==="don't"){ 
        await expect($("i*=Logout")).not.toBeDisplayed();
    }else {
        throw Error(`visibility ${visibility} not supported`)
    }

    });


// Then('I see the Logout button', async function() {
//     const logoutButton = await $("i*=Logout");
//     await expect(logoutButton).toBeDisplayed();
// });

// Then("I don't see the Logout button", async function() {
//     const logoutButton = await $("i*=Logout");
//     await expect(logoutButton).not.toBeDisplayed();
// });

