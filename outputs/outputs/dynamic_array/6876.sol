pragma solidity ^0.8.0;
contract Test {
    uint[10] a;
    uint k;
    uint f(uint a, uint b) internal { k = a * b; }
    constructor(uint _param) { a[7] = _param; }
    function f0() { f(a[4],a[5]); }
    function f1() internal { f(k,a[8]); }
    function f2() returns (uint) { f(a[2],a[3]); return a[7]; }
}
