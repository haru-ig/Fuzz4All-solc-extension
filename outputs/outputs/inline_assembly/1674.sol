pragma solidity ^0.8.0;
contract MutatorS3 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 a = ONE;
uint256 b = TWO;
uint256 c = FOUR;
uint256 old_c;




  modifier onlyLastChange {
    old_c = c;
    _;
  }


  function mutate() public onlyLastChange {
    c = old_c + THREE;
    SET(b);
    c += FOUR;
    a = ONE;
    b = TWO;
    PUSH(TWO);
    c += THREE;
  }


  function modifyB() public onlyLastChange {
    b = ONE;
    c = old_c + TWO;
    c += ONE;
  }
  function SET(uint256 x) internal {
    a = x;
  }
  function PUSH(uint256 x) internal {
    b = x;
  }
}
