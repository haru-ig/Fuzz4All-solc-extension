pragma solidity ^0.8.0;
contract Mutate_0001
{
    uint constant c1 = 7;
    uint constant c2 = 4;
    uint constant c3 = 9;
    uint16 constant n1 = 1;
    uint16 constant n2 = 2;
    bytes1 c;
    function test() public
    {
        c1 = c2;
        c2 = c3;
        c3 = c1;
        c1 = n1;
        c2 = n2;
        c1 = c1;
    }
}
