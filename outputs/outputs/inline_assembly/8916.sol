pragma solidity ^0.8.0;
contract EarlyMutator
{
    uint constant M = 5;
    uint x = 0x1000001;

    function test() public
    {
        x <<= 8;
        x <<= M;
        x <<= M * 2;
        x <<= M >> M * 2;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
}
