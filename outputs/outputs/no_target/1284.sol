pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint w1 = 0;
    uint16 w2 = 0;
    uint32 w3 = 0;
    bytes32 b1;
    bytes32 b2;
    bytes32 c;
    uint constant n1 = 1;
    uint constant n2 = 2**32 + 2;
    uint x1 = 0;
    function test1() public
    {
        (uint x, uint16 y, uint32 z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
        x = n1;
    }
}
