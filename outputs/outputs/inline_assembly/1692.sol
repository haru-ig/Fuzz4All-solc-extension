pragma solidity ^0.8.0;
contract MutatorS6 {
  uint256 constant ONE = 1;
  uint256 constant TWO = 2;
  uint256 constant THREE = 3;
  uint256 constant FOUR = 4;
  uint256 constant FIVE = 5;

  uint256 c = ONE;

  function mutate() public {
    c += ONE;
    c += TWO;
    c += THREE;
    c += FOUR;
    c += FIVE;
  }
}
