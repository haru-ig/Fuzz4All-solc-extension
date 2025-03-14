pragma solidity ^0.8.0;
library Lib {
    function f() internal pure returns (uint8) {
        return 1;
    }
    function g() internal pure returns (uint32) {
        return 1;
    }
}
contract simple_abi4 {
    function h() internal pure returns (uint8) {
        return Lib.f();
    }
    function i() internal pure returns (uint32) {
        return Lib.g();
    }
}
