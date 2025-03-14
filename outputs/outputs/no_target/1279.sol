pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    uint constant n1 = 0;
    uint constant n2 = 2**16;
    bytes1 c1;
    uint x1 = 0;
    function test() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = z ^ w1;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
        x1 = n1;
        w3 = n1;
        c1 = c;
    }
}
