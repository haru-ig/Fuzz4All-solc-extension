pragma solidity ^0.8.0;
library Lib {
    int constant a = 20;
    function f() public pure returns (int) {
        return a;
    }
}
contract C {
    int foo = 0;

    function h() public pure {
        int z = lib.f();
        foo = z + lib.f();
    }
  }
