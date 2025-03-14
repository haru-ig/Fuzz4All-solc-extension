pragma solidity ^0.8.0;

contract P34 {
  uint256 constant ZERO = 0;
  uint8 constant ONE = 1;
  uint16 constant TWO = 2;
  uint64 constant THREE = 3;
  uint128 constant FOUR = 4;
  uint32 constant FIVE = 5;

  uint8 constant CONST_ONE = 1;
  uint256 constant CONST_TWO = 2;

  fixed_bug1 constant FIXED_ONE = CONST_ONE;
  fixbug2 constant FIXED_TWO = CONST_TWO;
}

pragma solidity ^0.8.0;

contract P35 {
  function f1() public pure {
    while (ZERO + ONE > ZERO + ONE + ONE) {
      uint8 x;
    }
  }
}
