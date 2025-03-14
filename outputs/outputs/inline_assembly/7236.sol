pragma solidity ^0.8.0;



contract C {
  uint a;
  uint b;

  function test1() external {
    a = 5;
    b = 3;
    assembly {












    }
    require(a >= b, "a must be > b");
    require(a <= 3 * b, "a must be <= 3*b");
  }

  function test2() external {
    a = 8;
    b = 6;
    assembly {





    }
    require(a >= b, "a must be > b");
    require(a <= 2 * b, "a must be <= 2*b");
  }
}
