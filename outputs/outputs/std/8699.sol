pragma solidity ^0.8.0;
contract Example
{
    uint public x;
    uint constant constant_constant = 0x40;
    function setter(uint _x) public {
        x = 500 + constant_constant + _x;
    }
}
