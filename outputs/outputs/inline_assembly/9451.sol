pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint constant increment = 1;

  function() external payable {}
  fallback() external payable {
    counter = 0;
    counter += value;
    counter += value;
    counter += value;
  }
}
