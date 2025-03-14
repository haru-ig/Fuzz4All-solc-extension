pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint x1 = 0;
    uint x2 = 0;
    address x3 = 0;
    function test() public
    {
        (uint x, uint y, uint z) = (x1, x2, x3);
        x1 = x;
        x2 = n1;
        x3 = x;
        (x, y, z) = (x2, x3, x1);
    }
    function test1() public
    {
        (uint x, uint y, uint z) = (x1, x2, x3);
        x1 = n1;
        x2 = x;
        x3 = n1;
        (x, y, z) = (x2, x3, x1);
    }
    function test2() public
    {
        (uint x, uint y, uint z) = (x1, x2, x3);
        x1 = x;
        x2 = x2;
        x3 = n1;
        (x, y, z) = (x2, x3, x1);
    }
}
