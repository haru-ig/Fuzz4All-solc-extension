pragma solidity ^0.8.0;
contract MutatorS11 {
uint256 constant ONE = 1;
uint256 constant EIGHT = 8;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX = 6;
uint256 constant SIX_PLUS_EIGHT = SIX + EIGHT;
uint256 c = 7;
  function mutate() public {
    c -= SIX_PLUS_EIGHT;
  }
}
