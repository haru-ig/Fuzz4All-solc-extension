pragma solidity ^0.8.0;
contract Example
{
    uint x;
    function setter(uint _x) public {
        x = 0x010203040512345678;
        x = _x;
    }
}
