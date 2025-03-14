pragma solidity ^0.8.0;
contract Test37 {
    struct A {
        uint8 a : 32;
    }
    struct B {
        uint b : 32;
        uint c;
    }
    function f() public pure returns (A memory a, B memory b) {
        A memory a;
        B memory b;
        uint8 value;
        uint shift = 1;
        for (uint8 i = 0; i < 32; i++) {
            if (i == 0) continue;
            value = (uint8) (i * (uint128 (1) << shift));
            shift += 1;
            a.a = i;
            b.b = i;
            b.c = value;
        }
        return (a, b);
    }
}
contract Test38 {
    struct A {
        uint8 a;
    }
    function f() public pure returns (A memory) {
        A memory a;
        uint8 value = (uint8)(2 ** (uint256 (uint160) - 1));
        for (uint i = 0; i < 32; i++) {
            a.a = 0;
            a.a = (a.a + 1) % value;
        }
        return a;
    }
}
