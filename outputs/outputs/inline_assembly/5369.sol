pragma solidity ^0.8.0;
contract BB {
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 f;
    uint256 z;
    constructor () public {
        z = 1;
        f = 100;
        e = 9999999;
        d = 100;
        c = 100000000;
    }
    function reset() public {
        if (z!=1) return;

        c = 1000000000000;
        d = 10000000000000000000000;
        e = 10000000000000000000000000000;
        f = 1000000000000000000000000000000000000000000;
        reset2();
    }
    function reset2() public {
        if (z!=1) return;

        c = 1000000000000000000000000000000000000000000000000000000;
        d = 9
