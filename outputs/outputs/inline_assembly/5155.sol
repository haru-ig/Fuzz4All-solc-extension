pragma solidity ^0.8.0;

contract C {
  using SafeMath for uint;
  uint public counter = 0;
  constructor() public {
    counter = counter.add(1);
  }
  function checkCounter() public view returns (uint) {
    return counter.add(counter);
  }
  function mutatedCounter(uint x) public returns (uint) {
    return counter.add(x);
  }
}
