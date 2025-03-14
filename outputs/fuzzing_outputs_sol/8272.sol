pragma solidity ^0.8.0;
contract SemanticSimilar14_ {
  uint public x = 800;
  uint public b = 456;

  function f() public payable {
    uint a = x;
    uint c = a;
    writeSomething();

    x = c / c;
  }

  function writeSomething() public {
    x = 100;
  }
}

contract Caller {
  function f() public payable fallback(uint x) {
    require(x!= 2, "Must be 2");
    uint a = x;
    uint c = a;
    x = c / c;
  }
}
