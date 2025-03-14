pragma solidity ^0.8.0;
contract Test
{
    uint constant x = 20*5;
    uint constant z = 1*9;
    function test() public {
        x /= x/z;
    }
}
