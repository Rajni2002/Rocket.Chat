---
to: packages/<%= name %>/package.json
---

{
	"name": "@rocket.chat/<%= name.toLowerCase() %>",
	"version": "0.0.1",
	"private": true,
	"devDependencies": {
		"@types/jest": "^27.4.1",
		"eslint": "~8.45.0",
		"jest": "~29.5.0",
		"ts-jest": "~29.0.5",
		"typescript": "~5.0.2"
	},
	"scripts": {
		"lint": "eslint --ext .js,.jsx,.ts,.tsx .",
		"lint:fix": "eslint --ext .js,.jsx,.ts,.tsx . --fix",
		"test": "jest",
		"build": "rm -rf dist && tsc -p tsconfig.json",
		"dev": "tsc -p tsconfig.json --watch --preserveWatchOutput"
	},
	"main": "./dist/index.js",
	"typings": "./dist/index.d.ts",
	"files": [
		"/dist"
	]
}
