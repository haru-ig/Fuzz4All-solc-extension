pragma solidity ^0.8.0;
contract MutatorS10 {
uint256 constant ONE = 1;
  function mutate() public {
    uint256 oldData = c;
    c++;
    oldData++;
    oldData++;
    oldData--;
  }
}
