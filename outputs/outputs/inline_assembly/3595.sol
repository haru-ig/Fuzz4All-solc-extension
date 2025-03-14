pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithoutSemantics{
    uint[2] private arrInts = new uint[](2);
    uint[2] private arrIntsWithModifer = new uint[2];
    uint[2] private arrArrays = new uint[2][];
    uint[2] private arrArraysWithModifer = new uint[2][];
    uint[2] private arrSlices = new uint[2][];
    uint[2] private arrSlicesWithModifier = new uint[2][];
    uint[2] private arrStructs = new uint[2] (0, 1);
    uint[2] private arrStructsWithModifier = new uint[2] (0, 1);
    uint[2] private arrDynamicCallData = new uint[](2);
    uint[2][2] private arrDynamicCallDataWithModifier = new uint[2][2] (0, 1);
    constructor() {
        d = a;
        r = 1;
        d = a;
        a = address(b);
        a = address(c);
        b = address(3);
        a = c;
        b = e;
        h();
        d = b;
    }
    function h() public {
        g = h() == g? 2 : 3;
        r = 1;
        r = r + 1;
        r = r;
        d = b;
    }
}
