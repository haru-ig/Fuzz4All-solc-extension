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
    uint constant n2 = 2**255;
    uint x1 = 0;
    function test() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
        x1 = n1;
    }
}

pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint w1 = 3;
    uint w2 = 0;
    uint w3 = 0;
    uint x1;
    uint x2;
    uint x3;
    function test() public
        {
        (x1, x2, x3) = (w1, w2, w3);
        w1 = x2;
        w3 = x3;
        (x2, w1, x3) = (x3, w2, x1);
        w1 = x2;
        (x3, w1, 1) = (x1, w2, 3);
        w2 = n1;
        x2 = w1;
        w1 = n2;
        (w1, x3, w2, 0x123) = (0, x3, n2, 0);
        w1 = x2;
        (x1, x3, w2) = (0, x3, w1);
        w1 = w3;
        (w1, w2) = (x1, w2);
        (w1, x2, w2) = (x1, x3, x2);
        w2 = w1;
        (w2, x1, x2
