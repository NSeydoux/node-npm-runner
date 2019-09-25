# node-npm-runner

This Tech.io runner works with a node project. Mocha will be launched in the root directory and the result will be sent back to Tech.io.

## What it Does

This node:12.10.0 runner installs the dependencies using `npm install`. The dependencies must be specified in the `package.json` file at the project root as specified in the [official documentation](https://docs.npmjs.com/getting-started/using-a-package.json).

## How to Use

In order to use the current version of the runner in your project, edit the `techio.yml` file and add the following lines to your project:

```yaml
runner: nseydoux/techio-node:1.0.0-node12.10.0
```

### Example

In this example, the student is asked to write a method `toUpper()` (file `uppercase.js`):

```javascript
function toUpper(str) {
	return str.toUpperCase();
}

module.exports = toUpper;
```

In order to test the answer, the following unit test is created (file `tests/test.js`):

```javascript
var toUpper = require('./uppercase.js');
var assert  = require('assert');

it('should return HELLO', function() {
	assert.equal('HELLO', toUpper('hello'));
});

it('should return WORLD', function() {
	assert.equal('WORLD', toUpper('world'));
});
```

We include the unit testing library mocha in the package.json file:

```javascript
{
	"dependencies": {
		"mocha": "*",
		"should": ">= 0.0.1"
	}
}
```

In the lesson, the unit test can be called using:

`@[Test unittest: uppercase]({"stubs":["uppercase.js"], "command":"node_modules/mocha/bin/mocha test.js --reporter list"})`
In the lesson, the unit test can be called using:

`@[Test unittest: uppercase]({"stubs":["uppercase.js"], "command":"node_modules/mocha/bin/mocha test.js --reporter list"})`

## License

MIT
