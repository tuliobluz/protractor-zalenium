## Zalenium 

### Technologies used

I used the technologies below:

* [Protractor](https://www.protractortest.org/#/): Protractor is an end-to-end test framework for Angular and AngularJS applications. Protractor runs tests against your application running in a real browser, interacting with it as a user would;
* [Page Objects](https://www.protractortest.org/#/page-objects): Page Objects help you write cleaner tests by encapsulating information about the elements on your application page. A Page Object can be reused across multiple tests, and if the template of your application changes, you only need to update the Page Object;
* [CucumberJS](https://github.com/cucumber/cucumber-js): Cucumber is a tool for running automated tests written in plain language. Because they're written in plain language, they can be read by anyone on your team. Because they can be read by anyone, you can use them to help improve communication, collaboration and trust on your team;
* [Selenium Grid](https://www.seleniumhq.org/docs/07_selenium_grid.jsp): Selenium-Grid allows you run your tests on different machines against different browsers in parallel. That is, running multiple tests at the same time against different machines running different browsers and operating systems. Essentially, Selenium-Grid support distributed test execution. It allows for running your tests in a distributed test execution environment.
* [Selenium Zalenium](https://opensource.zalando.com/zalenium/): This is a Selenium Grid extension to scale your local grid dynamically with docker containers. It uses docker-selenium to run your tests in Firefox and Chrome locally, if you need a different browser, your tests can get redirected to a cloud testing provider (Sauce Labs, BrowserStack, TestingBot). Zalenium also works out of the box in Kubernetes.

Zalenium Repository: https://github.com/zalando/zalenium

#### Protractor:

I wrote a post on medium about protractor, if you want to know more about it:

* Post on medium: [Automation with Protractor, PageObject and Cucumber](https://medium.com/@tuliobluz/automa%C3%A7%C3%A3o-com-protractor-pageobject-e-cucumber-122537179ab7)
* Repository with Protractor 1: [protractor-cucumber-pageobject](https://github.com/tuliobluz/protractor-cucumber-pageobject)
* Repository with Protractor 2: [protractor-supertest](https://github.com/tuliobluz/protractor-supertest)

## Why?

We know how complicated it is to:

* Have a stable grid to run UI tests with Selenium
* Maintain it over time (keep up with new browser, Selenium and drivers versions)
* Provide capabilities to cover all browsers and platforms

That is why we took this approach where docker-selenium nodes are created on demand. Your UI tests in Firefox and Chrome will run faster because they are running on a local grid, on a node created from scratch and disposed after the test completes.

## Post on Medium about Zalenium

I created a post about [Zalenium — Brief Introduction with Protractor](https://medium.com/@tuliobluz/zalenium-brief-introduction-with-protractor-5d9e4f5f85cb)
