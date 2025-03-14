pragma solidity ^0.8.0;
contract Unsafe3 {
    address f;
    uint128 g;
    uint8 h;
    constructor() public {
        f = address(0);
        g = 1;
        h = 2;
    }
    function f() public {
        f = address(this);
    }
    function g() public {
        g = 0xf00d;
    }
}
