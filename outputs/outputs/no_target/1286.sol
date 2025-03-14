pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint w1 = 0;
    bytes1 b1;
    bytes1 b2;
    uint constant num = 1000;
    uint x1 = 0;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3, num);
        w1 = x;
        num = 1001;
    }
}
