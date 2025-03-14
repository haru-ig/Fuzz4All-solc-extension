pragma solidity ^0.8.0;
contract Mutate_0003_v1
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
        uint x;
        (x, uint y, uint z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
        x = n1;
    }
}
