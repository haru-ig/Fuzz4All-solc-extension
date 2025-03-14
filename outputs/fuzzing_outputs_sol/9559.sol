pragma solidity ^0.8.0;
contract Baz {
  function foo() public pure returns (uint a) {
    a = 30;
  }
}
library Library {
  function bar() public payable returns (uint a) {
    return 30;
  }
  function baz() public returns (uint a) {
    return 40;
  }
}
