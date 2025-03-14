pragma solidity ^0.8.0;
contract NotAnEqualCost {
  function test() public pure {
    (uint) (address(this).balance);
  }
}
contract SameCostAsNotAnEqualCost {
  function test() public pure {
    this.test();
  }
}
