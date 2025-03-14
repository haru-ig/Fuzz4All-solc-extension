pragma solidity ^0.8.0;
contract Mutate_0004
{
    modifier m1(uint x1)
    {
        w1 = x1;
        w2 = x1;
        w3 = x1;
        _;
    }
    modifier m2(uint x1)
    {
        w2 = x1;
        w3 = x1;
        _;
    }
    modifier m3(uint x1)
    {
        w3 = x1;
        _;
    }
    uint w1;
    uint w2;
    uint w3;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 0;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        m1(n1)();
        b1 = b2;
        x1 = x;
        x = n1;
    }
}

pragma solidity ^0.8.0;
contract Mutate_0005
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    Modifier m1(uint x)
    {
        w1 = x;
        _;
    }
    modifier m2(uint x)
    {
        w2 = x;
        _;
    }
    modifier m3(uint x)
    {
        w3 = x;
        _;
    }
    uint w4;
    uint w5;
    uint w6;
    modifier m4(uint x)
    {
        w4 = x;
        _;
    }
    modifier m5(uint x)
    {
        w5 = x;
        _;
    }
    modifier m6(uint x)
    {
        w6 = x;
        _;
    }
    uint w12;
    uint w13;
    uint w14;
    modifier m1
