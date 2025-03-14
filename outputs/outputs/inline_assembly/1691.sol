pragma solidity ^0.8.0;
contract MutatorS6 {
uint256 constant ONE = 1;
uint256 c;
  function mutate() public {
    uint256 s = ONE;
    s += ONE;
    s += ONE;
    s += ONE;
    c = s;
  }
}
