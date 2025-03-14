pragma solidity ^0.8.0;
contract Mutate_0002
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    bytes3 t1;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 0;
    uint x2 = 0;
    uint y1 = 0;
    uint y2 = 0;
    uint z1 = 0;
    uint z2 = 0;
    function test2() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (y1, z1) = (w2, w3);
        (x2, y2, z2) = (w1, w2, w3);
        b1 = b2;
        x = x * 1;
        (x1, y1, z1) = (w2, w3);
        (x2, y2, z2) = (w1, w2, w3);
    }
}
