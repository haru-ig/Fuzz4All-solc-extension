pragma solidity ^0.8.0;
contract Mutate_0006_v4
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 0;
    function test3() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        uint y1 = 0;
        uint y2 = 0;
        uint z1 = 0;
        uint z2 = n1;
        uint z3 = n1;
        y1 = w2;
        y2 = y1;
        z1 = w3;
        z2 = x;
        y3 = x;
        uint y4 = n2;
        uint y5 = n2;
        uint y6 = n1;
        uint z4 = y2;
        uint y7 = w1;
        uint y8 = x;
        z1 = x;
        x = n1;
        (y3, y5, y7) = (n2, n1, n2);
        (y3, z3) = (y3, w3);
        (z2, w1) = (z2, n1);
        (w3, c) = (c, w1);
        (b1, w2) = (c, x1);
        (b2, z1) = (y5, y7);
        b1 = y2;
    }
}
