pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    function mutate1()
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 += n1;
        w2 -= n2;
        w3 *= x;
    }
}
