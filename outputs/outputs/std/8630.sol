pragma solidity ^0.8.0;
contract MultiInheritance111
{
    constructor()
    {
        address a = address(0)  ;
        while (a!= 0)
        {
            a = abi.encodePacked(a);
        }
    }
