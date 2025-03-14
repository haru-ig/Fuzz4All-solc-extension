pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract myContract
{
    constructor() {}
    function f(uint x) view public returns (uint, uint) {
        uint y = x.add(96);
        uint z = y.mul(x);
        uint d = y * x;
        uint e = d + y;
    }
}
