pragma solidity ^0.8.0;
contract MutatorS15 {
uint256 constant SIZE = 1000;
uint256 constant TWO = 2;
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ONE_PLUS_PLUS = ONE_PLUS + ONE;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant ONE_PLUS_FIVE_PLUS = ONE_PLUS + FIVE;
uint256 constant ONE_PLUS_FIVE = ONE_PLUS + FIVE;
uint256 constant FIVE = 5;
uint256 constant SIZE_PLUS = 2 * SIZE;
uint256 constant SIZE_TWO = 2 * SIZE + TWO;
uint256 constant SIZE_FIVE = 2 * SIZE + FIVE;
function increment() public {
  SIZE++;
  c += ONE_PLUS;
}
function decrement() public {
  c -= ONE_PLUS;
}
function mutate() public {
  c += ONE_PLUS_PLUS;
  c += ONE_PLUS_SIX;
  c += ONE_PLUS_FIVE;
  c += SIZE_TWO - ONE_PLUS_FIVE_PLUS;
}
}
