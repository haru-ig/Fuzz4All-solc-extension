pragma solidity ^0.8.0;
contract Bar {
    function f() public view returns (bool) {
        (uint256 x,, uint256) = (10, 3, 4);
        return x > 5;
    }
}
contract MyContract {
    function f(uint a) public pure returns (uint) {
        (uint256 x,, ) = (a, 0, 0);
    }
    function g() public pure returns (bool) {
        (uint,, ) = (1, 2);
        return true;
    }
    function h() public pure noinline returns (uint) {
        (,, uint256) = (16, 0, 4200000);
        return 1;
    }
}
contract MyContract3 {
    function f(uint x) public pure returns (uint) {
        (uint256 y, uint z,, ) = (x, 0, 0);
        return x * (y + z);
    }
}
contract MyContract4 is MyContract3 {
}
contract MyContract6 is MyContract {
    function f() public pure returns (uint) {
        uint (uint256 x,, ) = (1, 2, 3);
        return x * (x + 2);
    }
}
contract MyContract7 is MyContract3 {
  address myAddr;
  constructor() {
    myAddr = 0x3433;
  }
    function f() public pure returns (uint) {
        uint256 x,, ) = (1, 2, 3);
        return x * (x + 2);
    }
}
contract MyContract8 is MyContract {
    function g(uint a) public pure returns (bool) {
        (uint256 x,, uint256) = (1, 3, 4);
        (uint256 z, uint w,, ) = (a, 5, 6);
        return z * w;
    }
    function g() public pure returns (bool) {
        (uint,, uint256) = (1, 3, 4);
        (uint256 z, uint w,, ) = (1, 5, 6);
        return z * w;
    }
    function h(uint) public pure returns (uint) {
        (uint256 x,, ) = (1, 2, 3);
        uint (uint256 y, uint z,, ) = (16, 0, 4200000);
        return x * (y + z);
    }
    function h() public pure noinline returns (uint) {
        (,, uint256) = (16, 0, 4200000);
        return 1;
    }
}
