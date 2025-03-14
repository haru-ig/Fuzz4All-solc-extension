pragma solidity ^0.8.0;
contract Mutate_0001
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    uint x1 = 0;
    bytes1 b1;
    bytes1 b2;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x2 = 0;
    uint x3 = 0;
    uint x4 = 0;
    bytes1 d;
    bytes1 e;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
    }
    function test2() public
    {
        x1 = x2;
        w1 = n1;
        b1 = d;
        x2 = x3;
        w2 = n2;
        b2 = e;
        x3 = x4;
    }
}
