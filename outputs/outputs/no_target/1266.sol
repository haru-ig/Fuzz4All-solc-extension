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
        x1 = n1;
        x1 = n1;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        b2 = byte(0x1234);
        (x, y, z) = (w2, w3, w1);
        b1 = c;
        w3 = x;
        w1 = b2;
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
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        x1 = n1;
        x1 = n1;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        b2 = byte(0x1234);
        (x, y, z) = (w2, w3, w1);
        b1 = c;
        w1 = x;
        w2 = n1;
        w3 = n1;
    }
}

pragma solidity ^0.8.0;
contract Mutate_0005
{
    uint w1 =
