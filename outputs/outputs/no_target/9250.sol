pragma solidity ^0.8.0;
contract semanticallyEquiv1 is semanticallyEquiv{
}

/* The following error message occurs only in the browser console if the test contract does not include the `semanticallyEquiv.sol` package from Truffle.

In addition, when using the [Truffle Unit Tests Explorer](https:

Please include the source files in your test contract or run the test in isolation.
To reproduce the error, simply run Truffle, execute a command under the contracts folder, eg `truffle test test/semanticEquiv1.test.js` and watch for new errors appearing in your console.
For this reason, we recommend to change the test contract to take no input.

Learn more about writing contract tests in Truffle & Solidity with the [Truffle Unit Tests Explorer](https:

If you still cannot fix the issue, you can re-enable the tests in your existing JavaScript files
(located in `test/suite/index.js`) and run them one by one or re-run the suite without errors (i.e., `truffle test`).

---
***IMPORTANT***:
The following is an automatically generated report.
See https:

The console output is a compilation log but does not represent the actual execution of the script.

All contracts listed below are compiled when the compilation finishes using the `compileWithDefaults` function, which uses the `compilerVersion` parameter to override the default Solidity compiler version of the currently used node.

All output below and beyond is taken from within the contract's file.
In order to view the AST, you can also call view().
For this reason, it is very important to do not print `out` or `in` parameters or return values in contract tests.
They may cause confusion, misunderstanding or unexpected results.
For this reason, use console.log() or other methods
