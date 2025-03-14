pragma solidity ^0.8.0;
contract C {
    uint256 x;
    constructor() {
        x = 0;
    }
    function set(uint256 i) public {
        uint256 j = x;
        K k;
        k.m(i);
        x = j;
        uint256 k = j;
    }
}
contract T {
    uint256 x;
    constructor(uint256 i) public {
        x = i;
    }
    function g() public pure {
        C c;
        C c1;
        C c2;
        if (c.x == c1.x && c.x == c2.x) c.set(x); else c1.set(x);
        c.set(x);
    }
}
