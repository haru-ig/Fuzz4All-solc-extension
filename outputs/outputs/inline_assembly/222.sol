pragma solidity ^0.8.0;
contract E11
{
    function multiplyInInlineAssembly(uint _x, uint _n) internal pure returns (uint) {
        uint x0 = _n << 128;
        uint x1 = _x;
        uint x2 = 18446744073709551615;
        uint x3 = 126185660278442067;
        uint x4 = 127919154211704734;
        uint x5 = 8388608;
        uint x6 = 4194304;
        uint x7 = 2097152;
        uint s0 = x0;
        uint s1 = x1;
        uint s2 = x2;
        uint s3 = x3;
        uint s4 = x4;
