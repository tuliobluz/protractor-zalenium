let specPage = require('../pages/spec.po.js');

let chai = require('chai');
let chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
let expect = chai.expect;
var { setDefaultTimeout } = require('cucumber');
setDefaultTimeout(60 * 1050);

Before(async function () {
    await specPage.init();
})

Given('The user go to {string}', async function (string) {
    await specPage.get(string);
});

When('The user adds {string} in the name field', async function (string) {
    await specPage.setName(string);
});

Then('The user should see Hello with the username', async function () {
    await expect(specPage.getGreetingText())
        .to.eventually.equal('Hello Tulio!!')
});

Then('The user should see Hello with the username success', async function () {
    await expect(specPage.getGreetingText())
        .to.eventually.equal('Hello Tulio!')
});

Then('The user should see Hello with the username success 2', async function () {
    await expect(specPage.getGreetingText())
        .to.eventually.equal('Hello Tulio!')
});

After(function (test) {
    browser.manage().addCookie({ name: 'zaleniumTestPassed', value: test.result.status == 'failed' ? 'false' : 'true' });
})