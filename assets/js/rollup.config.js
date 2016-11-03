import buble from "rollup-plugin-buble";

export default {
	entry: "index.js",
	format: "iife",

	external: [
		"mithril"
	],

	globals: {
		"mithril": "m"
	},

	plugins: [
		buble()
	]
}
