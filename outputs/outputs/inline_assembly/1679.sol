pragma solidity ^0.8.0;
contract MutatorS4 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 old_c;
uint256 new_c;
  function mutateC() public {
    SET(0, 1, 3);
    c += THREE;
    c = old_c + THREE;
    c = old_c + TWO;
    c += TWO;
    mutateA();
    mutateB();
    c = old_c + THREE;
  }
  function modifyA() public {
    a = ONE;
    c = old_c;
  }
  function modifyB() public {
    b = ONE;
    c = old_c + TWO;
  }
  function modifyC() public {
    c = FOUR;
    new_c = ONE;
    mutateA();
    mutateB();
    mutateA();
    mutateB();
    mutateC();
  }
  function SET(uint256 x, uint256 y, uint256 z) internal {
    c = x;
    a = y;
    b = z;
  }
  modifier onlyLastChange {
    new_c = c;
    _;
  }
  function mutateA() internal {
    b += ONE;
  }
  function mutateB() internal {
    c += THREE;
    c = old_c + TWO;
  }
  function mutateC() internal {
    SET(c, new_c, c + THREE);
  }
}
