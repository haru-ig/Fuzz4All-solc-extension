pragma solidity ^0.8.0;
contract MutatorS5 {
uint256 constant ONE = 1;
uint256 b = ONE;
  modifier onlyLastChange {
    b = ONE;
    b = ONE;
    _;
  }
  function mutate() public onlyLastChange {
    b = ONE + ONE;
  }
}
