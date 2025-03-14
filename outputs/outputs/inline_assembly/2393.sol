pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 10;
    uint B;
    constructor(uint _x) public {
        B = _x >> 8;
    }
    modifier onlyIf(uint x){ if(B > x){ B = B - x; require(false);} }
    function subtract(uint _x) public onlyIf(_x < 255)
    {
        B = B - _x;
    }
    function multiply(uint _x) public onlyIf(256 <= _x && _x <=  4294967295)
    {
        B = B - _x;
    }
    uint constant add = 64;
    function increase(uint _x) public onlyIf(add <= _x && _x <= 255)
    {
        B = B + add;
    }
    uint constant subtract2 = 64;
    function decrease(uint _x) public onlyIf(subtract2 >= _x && _x >= 0)
    {
        B = B - subtract2;
    }
}
