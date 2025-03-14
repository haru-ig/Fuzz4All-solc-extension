pragma solidity ^0.8.0;
contract O {
  function o() public {
    function G(uint x) public pure returns (uint) {
      if (x < 0) {
        return uint(uint160(-1)) - 1;
      } else {
        return (uint(uint160(-1)) + 1);
      }
    }
    G(10);
  }
}

{
  "name": "test",
  "version": "1.0.0",
  "author": "<NAME> <<EMAIL>> (https://github.com/kristianmandrup)",
  "license": "BSD3",
  "dependencies": {
    "solc-typed-ast": "0.2.11"
  }
}
