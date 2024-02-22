export class Page {
    get flashMessage() { return $("#flash"); }
    textMessage(text) { return $(`//h4[text()="${text}"]`); }

    async open(pageName) {
        await browser.navigateTo(`https://the-internet.herokuapp.com/${pageName}`); }
}

export default new Page();
