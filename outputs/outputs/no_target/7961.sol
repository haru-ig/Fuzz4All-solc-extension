pragma solidity ^0.8.0;
contract TestMutator7 {
    uint256[] public z;
    uint[] public x;
    uint[] public a;
    uint[] public b;
    uint[] public c;
    constructor () public {
        x= new uint[](3);
        b= new uint[](2);
        b[0] = 0x0;
        b[1] = 1;
        x[0] = 0xf47010c8f14f4450d102b93d98e00483b20fa60e;
        x[1] = 18495576;
        x[2] = 0x0;
        a[0] = 2;
        a[1] = 5;
        a[2] = 0x0;
        c[0] = 9;
    }
    function test() returns (uint[] memory) {
        emit t1(b);
        emit t2(x);
        emit t3(a);
        emit t4(c);
        emit t5(_b);
        emit t6(_x);
        emit t7(_a);
        emit t8(_c);
        return a;
    }
    function t1(uint[] memory _b) {
        (uint[] memory _a, ) = (_b,_b);
    }
    function t2(uint[] memory _x) {
        (uint[] memory _a, uint[] memory _b) = ( _x,_x);
        (uint[] memory _c, uint[] memory _d) = ( _c,_c);
    }
    function t3(uint[] memory _a) {
        (uint[] memory _b, uint[] memory _c) = ( _a,_a);
    }
    function t4(uint[] memory _c) {
        (uint[] memory _a, uint[] memory _b) = ( _a,_a);
        (uint
