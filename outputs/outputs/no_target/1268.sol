pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    uint constant n1 = 0;
    uint constant n2 = 2**16;
    uint x1 = 0;
    function test() public
    {
        w1 = n1;
        w2 = n2;
        (w3, w1, c) = (w2, w1, b1);
        x1 = x1;
        w3 = n1;
        (x1, w3, uint w4) = (x1, c, w2);
        x1 = n2;
        x1 = n2;
        (x1, w4, uint w5) = (x1, c, w2);
        x1 = w3;
        x1 = n1;
        (w3, w1, w4) = (w3, c, w2);
        x1 = n2;
        (w4, c, w1) = (x1, c, w2);
        x1 = n1;
        (w1, w3, uint w11) = (x1, w3, w2);
        w3 = n1;
        b1 = b1;
        x1 = w1;
        w2 = w2;
    }
}

pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint w1 = 0;
    uint w2 = 0;
    bytes1 b1;
    uint c;
    uint constant n1 = 0;
    uint constant n2 = 2**16;
    uint x1 = 0;
    function test() public
    {
        (uint, w1, uint w2) = (w1, w2, w1);
        uint x = x1 + 1;
        x1 = w3;
        x1 = x;
        x1 = n1;
        if (x >= c) x = w3;
        else x = x;
    }
}
/* Please create a mutated program
