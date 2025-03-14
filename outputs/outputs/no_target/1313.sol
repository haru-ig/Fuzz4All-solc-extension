pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    bytes1 z;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        w1 = n1;
        w2 = n2;
        w3 = 0;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        if (b1!= 0) {
            w1 = x - 1;
            if (b1 >= 0) ;
        }
        b2 = 0;
        (x, y, z) = (w2, w3, w1);
        b2 = b1;
        b1 = 0;
    }
}
