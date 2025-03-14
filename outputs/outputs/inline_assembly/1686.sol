pragma solidity ^0.8.0;
contract MutatorS6 {
uint256 constant ONE = 1;
uint256 b = ONE;
  modifier onlyLastChange {
    b = ONE;
    _;
  }
  function mutate() public onlyLastChange {
    b = ONE + ONE;
    b = ONE + ONE;
    b = ONE + ONE;
    b = ONE + ONE;
    b = ONE + ONE;
    b = ONE + ONE;
    b = ONE + ONE;
  }
}
