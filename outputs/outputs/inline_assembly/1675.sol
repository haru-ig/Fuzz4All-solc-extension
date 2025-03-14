pragma solidity ^0.8.0;
contract MutatorS5 {
  uint256 b;
  uint256 constant ONE = 1;
  uint256 constant TWO = 1;
  uint256 constant THREE = 1;
  uint256 c = ONE;
  uint256 old_c = ONE;
  modifier onlyLastChange {
    old_c = c;
    b = ONE;
    _;
  }
  function mutate() public onlyLastChange {
    c = old_c + FOUR;
    c = old_c + TWO;
    c = old_c + THREE;
  }
  function modifyA() public onlyLastChange {
    a = TWO;
    b = ONE;
    c = old_c + ONE;
  }
  function PUSH(uint256 x) internal {
    c = ONE;
  }
}
contract MutatorS4 {
  uint256 c;
  uint256 constant ONE = 1;
  uint256 constant TWO = 1;
  uint256 constant THREE = 1;
  uint256 b = ONE;
  uint256 old_c = One;
  modifier onlyLastChange {
    _;
  }
  function mutate() public onlyLastChange {
    a = TWO;
    b = ONE;
    c = old_c + FOUR;
    c = old_c + THREE;
    c = old_c + TWO;
  }
  function modifyA() public onlyLastChange {
    a = ONE;
    b = TWO;
    c = old_c + ONE;
  }
  function PUSH(uint256 x) internal {
    a = ONE;
    b = ONE;
    c = old_c + TWO;
  }
}
contract MutatorS7 {
  uint256 constant ONE = 1;
  uint256 constant TWO = 1;
  uint25
