pragma solidity ^0.8.0;

pragma solidity 0.8.0;


contract simple
{
    function c() pure public returns (uint x) {
        x = 1;
    }
}


contract test {
    uint x=1;
    fixed x2;
    bytes32 x3;
    uint32 x4;
    bytes x5;
    uint8 x6;
    bytes4 x7;
    bytes32 x8;

    constructor(uint my) {
        x = my;
        x2 = 1;
        x7 = 0x11111111;
        x8 = 0xff;
    }

    function f() public returns (uint z1, uint z2) {
        x = 2;
        (z1, z2) = (x, 1);
        x2 = z2;
        return (x, z2);
    }

    function g() public returns (uint r) {




        x = 3;
        (,r) = (x, 1);

        return r;
    }

    function h(uint a) public returns (uint r) {




        x = 4;
        uint b ;

        (r, r) = (x, 0);
        /* x = 1;
