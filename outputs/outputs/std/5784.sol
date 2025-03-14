pragma solidity ^0.8.0;
contract Mutated4
{
    address public a;
    address public b;
    address public mutant;

    constructor()
    {
        a = 0;
        a = (address(this));
        a = mutant;
        mutant = a;
        a = 0x0;
        a = 0x0;
        a = 0x0x0;
        a = 0x000000000000000000000000000000000000000000000000000000000000000;
        a = 0x000000000000000000000000000000000000000000000000000000000000000000x00;
        a = 0x000000000000000
