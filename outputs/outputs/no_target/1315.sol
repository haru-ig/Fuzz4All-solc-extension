pragma solidity ^0.8.0;
contract Mutate_0002
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
    uint x2 = 0;
    function test1() public
    {
        uint (_, uint y, uint z) = (w1, w2, w3);
        x1 = x2;
        w1 = n1;
        w2 = n2;
        w3 = x2;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x = x * -0;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
    }
}
