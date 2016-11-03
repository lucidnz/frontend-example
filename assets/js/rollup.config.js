import buble from "rollup-plugin-buble";

export default {
	entry: "./index.js",

	plugins: [
		buble()
	]
}
