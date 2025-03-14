pragma solidity ^0.8.0;

contract A {
    function f() public {

    }
}

contract B is A {
    function f () external {

    }
}

contract C is B {
    uint d;
    function g() public {
        A a;
        d = a;
    }
}

contract X {
    uint a;

    uint b;

    constructor(uint a, uint b) {
        uint32 aa;
        a = a + aa;
        aa = b;
        b = b * aa;
    }

    function geta() public view returns (uint) {
        return a;
    }

    function getb() public view returns (uint) {
        return b;
    }
}

contract E {
    const uint A = 1;
    const uint B = 1;
    const uint C = 1;
    uint32[] a;
    uint256 x;
    uint32 x2;

    function f() public {
        a = new uint32[](C);
    }

    function g() public {
        for (uint i=0; i<3; ++i) {
            a[B] = A;
        }
        x = A - B;
        uint256 x = A + B;
    }
}
