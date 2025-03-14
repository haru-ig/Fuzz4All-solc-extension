pragma solidity ^0.8.0;
library Lib {
    function a() public pure virtual returns (bool){
        return true;
    }
}
contract seven {
    uint public r;
    uint public x;
    uint public d1;
    uint public d2;
    function __func__() public {
        x = 2;
        r = 5;
        d1 = 5;
        d2 = (x & 51) | 127;
        r += 25;
    }
    function a() public {
        r = (r + r) - (x + x);
        x = 2;
    }
    function b() public {
        x = 5;
        a();
        r += 42;
        b();
    }
    function c() public {
        b();
        r = (r + r) - x + 1;
        x = 2;
    }
    function d() public {
        uint128 foo;
        b();
        r -= foo;
        if (foo >= 0) {
            r = (d2 + d1) ^ d2;
        }
        else {
            r = d1;
        }
        uint256 i;
        d2 = (uint256(--r));
    }
}
