pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16;
    uint x1 = 0;
    function test() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = x;
        (x, y, z) = (n1, x1, w2);
        b1 = b2;
        w1 = x;
        c = b1;
        b2 = b1;
        b1 = b2;
        x = n1;
        x1 = n2;
        x1 = n1;
  }
}

pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16;
    uint x1 = 0;
    function test() public
    {
        (w1, w2, w3) = (1, 2, 3);
        w1 = n1;
        w2 = 1;
        uint x3 = w2;
        (w1, w2, w3) = (4, 5, 6);
        bytes memory b = hex"abcdef";
        c = b;
        uint x4 = c;
        (w1, w2, w3) = (0xff, 0xff, x4);
        x4 = -n1;
    }
}
contract Mutate_0005
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
