pragma solidity ^0.8.0;
contract Mutant5c
{
    function f(uint8 b, uint8 h, uint8 m) public pure
    {
        b ^= 42;
        h++;
        m =!m;
    }
}
