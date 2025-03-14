pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16;
    uint x1 = 0;
    uint x2 = 0;
    uint x3 = 0;
    function test() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3, x1, x2);
        w3 = x3;
        (x, y, z) = (w3, w1, w2);
        b1 = b2;
        uint x1 = x13;
        (x, y, z) = (w3, w1, w2);
        x = x1;
        x3 = x1;
        x13 = x2;
        w2 = x2;
        x2 = x3;
        w3 = x1;
        x1 = x3;
        x1 = n1;
        w3 = n1;
    }
}
