pragma solidity ^0.8.0;
contract Mutate_0001
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
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
        x = n1;
        uint y1 = x;
        uint y2 = 0;
        uint y3 = 0.0;
        uint y4 = -1;
        if (y1 + y2 + y3 + y4!= x1) {
            revert();
        }
        x = n2;
    }
}
