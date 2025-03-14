pragma solidity ^0.8.0;
contract C {
    uint a;
    uint b;
    uint c;
    uint d;

    uint[] v;

    constructor () {
        c();
    }

    function c() public pure {
        address a = 0x1;
        a;
        b = 6;
        c;
        d = 7;
        d = 5;
        v.push(1);
        v.push(2);
    }
}
