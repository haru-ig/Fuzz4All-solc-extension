pragma solidity ^0.8.0;
contract Mutant1
{
    uint32 x;
    uint32 a;
    uint32 value;

    function f() public onlyOwner public returns (uint32) {
     x = a + value + 1;
     return value;
     }
}
