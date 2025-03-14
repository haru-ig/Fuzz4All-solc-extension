pragma solidity ^0.8.0;
contract MutatorS4 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant THREE2 = 1;
uint256 constant FOUR = 1;
uint256 a = TWO;
uint256 b = THREE;
uint256 c = FOUR;
uint256 d = THREE2;
uint256 old_b;
  modifier onlyLastChange {
    old_b = b;
    _;
  }
  function mutate() public onlyLastChange {
    b = old_b + THREE;
    SET(TWO);
    b += TWO;
    b -= THREE;
    b *= THREE;
    b >>= 2;
    b &= THREE2;
    b = ONE;
    b -= TWO;
    b *= FOUR;
    b >>= 1;
  }
  function modifyB() public onlyLastChange {
    b = FOUR;
    b = a - ONE;
    b += ONE;
    c -= FOUR;
  }
  function SET(uint256 x) internal {
    b = x;
  }
}
