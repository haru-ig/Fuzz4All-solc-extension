pragma solidity ^0.8.0;
contract Mutate_0001
{
    uint w1;
    uint w2;
    uint w3;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 2**31 - 1;
    uint constant n2 = 5**21 + 1;
    uint x1;

    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = x + x;
        w2 = n1;
        w3 = n2;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x = x * -1;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
    }
}

/* pragma solidity ^0.8.0;
contract Mutate_0002
{
    uint w1;
    uint w2;
    uint w3;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 3**63 - 1;
    uint constant n2 = 9**11 + 1;
    uint x1;

    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = 32767 + n1;
        w2 = n1 * n1;
        w3 = x1;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x = x * -n1;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
    }

    function test2() public
    {
        (uint x, uint y, uint z) =
