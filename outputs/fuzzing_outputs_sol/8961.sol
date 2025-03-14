pragma solidity ^0.8.0;
contract Mutator {

  uint256 public lastValue;

  uint256 public firstValue;



  function getFirstValue() external view returns (uint256) {
    return firstValue;
  }

  function getLastValue() public view returns (uint256) {
    return lastValue;
  }

  function increment() public {
    lastValue++;
    firstValue++;
  }
}
