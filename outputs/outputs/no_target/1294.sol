pragma solidity ^0.8.0;

contract Mutate_0002_v2
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    uint w4 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 0;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3, w4);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        w4 = y;
        (x, y, z) = (w2, w3, w1, w4);
        b1 = b2;
        x1 = x;
        x = n1;
    }
}
contract Mutate_0001
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 0;
    function test1() public
    {
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, ) = (x, );
        b1 = b2;
        x1 = x;
        x = n1;
    }
}
