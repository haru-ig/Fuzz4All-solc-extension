pragma solidity ^0.8.0;
contract MutatorS8 {
uint256 constant ONE = 1;
uint256 c = ONE;
  function mutate() public {
    c++;
    c++;
    c++;
  }
}
