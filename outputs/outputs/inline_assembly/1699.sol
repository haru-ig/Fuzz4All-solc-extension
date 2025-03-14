pragma solidity ^0.8.0;
contract MutatorS8 {
uint256 constant ONE = 1;
uint256 constant ONE_AND_HALF = 1.5;
uint256 x = ONE;
uint256 y = ONE_AND_HALF;
  function mutate() public {
    if (y > x) {
      x = x - ONE;
    } else {
      x = x + ONE;
    }

    if (x > y) {
      y = y - ONE_AND_HALF;
    } else {
      y = y + ONE - ONE_AND_HALF;
    }

    if (x > ONE_AND_HALF) {
      x = 1;
    } else {
      x = x + 1;
    }
  }
}







}
