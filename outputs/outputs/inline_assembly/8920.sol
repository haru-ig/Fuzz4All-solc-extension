pragma solidity ^0.8.0;
contract MutatedGood
{
    uint internal x;
    constructor() public
    {
        x = 0x10000000000000;
    }
    function test() public
    {
        x |= 0x100000000000000;
        x = ~x & x ^ x & x >> 1 & x >> 2 & x >> 3 & x >> 4 & x >> 5 & x >> 6 & x >> 7 & x >> 8 & x >> 9 & x >> 10 & x >> 11 & x >> 12 & x >> 13 & x >> 14 & x >> 15;
        uint256 y;
        assembly {
            y := mload(0x40)
        }
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
