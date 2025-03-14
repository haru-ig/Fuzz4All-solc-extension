pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    uint x1 = 0;
    function() public payable
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
    }
}
