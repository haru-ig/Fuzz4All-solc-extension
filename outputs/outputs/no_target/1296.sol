pragma solidity ^0.8.0;
contract Mutate_0001_v1
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1 = "A";
    bytes1 b2 = "a";
    bytes1 c = "abc";
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 64671342;
    function test2() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        b1 = b2;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        w1 = n1;
        x1 = x;
        b1 = b2;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);

        x1 = x;
        bytes1 b;
        (b, b, b) = ("", "", "");
        x1 = x;
        (b, b, b) = ("A", "", "B");
        x1 = x;
        b = "";
        (b, b, b) = ("1234567890", "", "ABCDE");
        x1 = x;
        (b, b, b) = ("", "1234567890", "");
        x1 = x;
        (b, b, b) = ("", "", "0");
    }
    function test3() public
    {
        (uint x, uint y) = (w1, w2);
        w1 = n1;
        w2 = n2;
        uint z = x;
        x = n1;
        x = n2;
        z = x
