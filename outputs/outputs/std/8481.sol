pragma solidity ^0.8.0;
contract MutationEquivalence
{
    uint x;
    uint8 y;
    uint16 z;
    uint32 w;
    uint64 v;
    function equivalent() public
    {
        x = x - 10;
        y = y - 30;
        z = z + 3;
        w = w + 300;
        v = v * 10;
    }
}
