pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32 x;
        struct SubA {
            uint32 x1;
        }
        A(uint32 _x) internal {
            a = _x;
        }
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.x = 0xDEADBEEF;
        return a;
    }
}
