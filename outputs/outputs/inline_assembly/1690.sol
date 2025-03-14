pragma solidity ^0.8.0;
contract MutatorD {
  uint256 constant ONE = 1;
  uint256 c = ONE;

    c += ONE;
    c += ONE;
    c += ONE;


  uint256 x;
  assembly {
    x := 100
  }
  require(x == 101);
}
}
