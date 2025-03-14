pragma solidity ^0.8.0;
contract MutatedTest {
    uint[] pub _arr;

    function f() public pure {
        S.f();
        _arr.push(2);
    }
}"",
            "", false}
  ]

var results = runTests()

if (results.lenght > 0) {
    results.forEach(function(v) {
      if (v.failed) {
          print("\033[31m")
          print(format("!!Test %s Failed: %#x", v.hash, v.result))
          print("\033[0m")
      } else {
          print("\033[32m")
          print(format("Test %s Passed: %#x # (%d/%d)", v.hash, v.result, v.run, v.tests))
          print("\033[0m")
      }
    })

    js_output.failedTests = results
    js_output.successTests = results.filter(function(_result){return _result.failed == false})

    js_output.totalTests = results.length + js_output.failedTests.length
    process.exit(1)
}
