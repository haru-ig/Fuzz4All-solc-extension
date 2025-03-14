pragma solidity ^0.8.0;
contract MutatorS5 {
function check1(uint256 x) internal pure {
    if (x == ONE) {
      require(true, "Test Failed: x is equal to one");
    }
}
function check2(uint256 x) internal pure returns (uint256) {
    if (x == ONE) {
      return true;
    }
    return false;
}
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
modifier checkThree(uint256 x) pure {
    if (x == THREE) {
      require(true, "Test Failed: x is equal to one");
    }
}
modifier checkTwo(uint256 x) pure returns (uint256) {
    if (x == TWO) {
      return true;
    }
    return false;
}
uint256 constant THREE2 = 1;
uint256 a;
uint256 b;
  constructor() { }
  function check(uint256 x) public {
    b = x;
  }
  function fail1() public {
    b--; CHECK(TWO);
  }
  function check2_() internal {
    if (ONE == b) {
      require(TWO == a, "Failed2");
    }
  }
  function fail2() public {
    b--; CHECK(TWO, ONE);
  }
  function ok() public {
    b=ONE;
    b+=(TWO+one);
    b-=(ONE+TWO);
    b*=(TWO+ONE);
    b/=TWO;
    b%-=ONE;
    b**-ONE;
    CHECK3(THREE);
  }
