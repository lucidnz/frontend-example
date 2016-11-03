import m from "mithril";

export let rootElement = document.querySelector("main");

export let view = function () {
	return m("div", [
		m("h1", "Example")
	]);
};
