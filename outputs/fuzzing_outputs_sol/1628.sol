pragma solidity ^0.8.0;
contract C {
  constructor() {
  }
  function foo(string memory s) public pure {
    return foo2(s);
  }
  fallback function() external pure {
  }
  fallback function() public pure {
    return foo2("<dummy>");
  }
  function foo2(string memory s) public pure {
  }
}
