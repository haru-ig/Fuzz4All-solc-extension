pragma solidity ^0.8.0;
contract MutatorS5 {
uint256 constant ONE = 1;
uint256 b = ONE;
uint256 c = ONE;
  modifier onlyLastChange {
    b = ONE;
    b = ONE;
    c = ONE;
    _;
  }
  function mutate() public onlyLastChange {
    b = ONE + ONE;
    c = ONE + ONE;
  }
}
