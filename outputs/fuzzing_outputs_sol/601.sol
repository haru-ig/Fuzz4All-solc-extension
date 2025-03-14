pragma solidity ^0.8.0;
contract Mod
{
    uint8 public value;
    constructor()
    {
        value = 0;
    }
    modifier setVal(uint8 x)
    {
        emit set(x);
        value = x;
        _;
    }
    event set(uint8 val);
}
