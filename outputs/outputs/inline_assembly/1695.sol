pragma solidity ^0.8.0;
contract MutatorU16 {
uint256 constant ONE = 1;
uint256 c = ONE;
  function mutate() public {
    c = c * ONE + ONE;
    c = c * ONE + ONE;
    c = c * ONE + ONE;
  }
}
