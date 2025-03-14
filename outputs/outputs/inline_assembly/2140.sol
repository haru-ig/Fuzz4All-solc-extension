pragma solidity ^0.8.0;
contract NewVersionOfSame2
{
    function doIt(uint x) public pure returns (uint y) {
        if (x < 315) return (x << 1) | 1;
        else return (x << 1) | (x >> 1);
    }
}
