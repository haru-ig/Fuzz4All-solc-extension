pragma solidity ^0.8.0;
contract MutatorS15 {
pragma AbiHeader expire;
pragma AbiHeader time;
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
uint256 c = ONE;
  function mutate1() public {
    c += ONE_PLUS;
  }
}
