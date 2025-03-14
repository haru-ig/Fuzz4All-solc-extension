pragma solidity ^0.8.0;
contract mutation2 {
    uint256 x;
    uint256 p;
    constructor() public {
        x = 5;
        p = x;
    }

    function c() public {
        x = (uint256(-5));
        p = x;
        assert(p == 1);
        x = (uint256(42));
        p = x;
        assert(p == 42);
    }
    function d() public {
        x = uint(uint8(1));
        assert(x == 1);
        x = uint(uint8(0));
        assert(x == 0);
    }
    function e() public {
        p = uint(uint8(1));
        assert(p == 1);
        p = uint(uint8(0));
        assert(p == 0);
    }
    function f(uint q) public {
        p = q;
        assert(x == q);
    }
    function g(int i) public {
        i = -i;
        p = -i;
        assert(x == i);
    }
    function h(bool b) public {
        bool bb = b;
        p = bb;
        assert(p);
    }
}


pragma solidity ^0.8.0;




library Sqrt {

    function safeSqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0) {
            return 0;
        }

        uint256 y = x;
        uint256 x0 = x;

        while ((y >> 2) > x) {
            y = (x0 + y) >> 1;
            x0 = x;
        }

        return y;
    }
}



/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * Solidity doesn't provide any built in support for arithmetic operations, so this implementation
 * uses instead a pairing of `add` and `sub`, and `mul`, defined in Solidity. This behavior is
 * merely convenient signed operations on `uint256`s.
 *
 * By default, this contract module is already updated with these static functions, which can be used
 * directly
