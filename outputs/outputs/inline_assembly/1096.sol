pragma solidity ^0.8.0;
contract MutatedContract2 {
  uint256 x = 0;
  constructor() {
    x += 1;
  }
}

contract Tester is MutatedContract, MutatedContract2 {
  function test() public {
  x += 1;
  assert(x == 3,"x is out of bounds");
  }
}
contract TesterNoCall {
  function test() public pure {


  }
}
