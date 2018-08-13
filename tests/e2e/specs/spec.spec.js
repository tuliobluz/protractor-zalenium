let specPage = require('../pages/spec.po.js');

let chai = require('chai');
let chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
let expect = chai.expect;
var {setDefaultTimeout} = require('cucumber');
setDefaultTimeout(60 * 1200);

Before(function(){
    specPage.init();
})

Given('The user go to {string}', function (string) {
    specPage.get(string);
});

When('The user adds {string} in the name field', function (string) {
    specPage.setName(string);
});

Then('The user should see Hello with the username', function () {
    expect(specPage.getGreetingText())
        .to.eventually.equal('Hello Tulio!')
});