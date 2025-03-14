pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = -1;
    uint constant n2 = 2**16;
    uint x1 = 0;
    function test() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        uint a = n1;
        uint b = n2;
        (uint c, uint d, uint e) = (w2, w3, n1);
    }
}
