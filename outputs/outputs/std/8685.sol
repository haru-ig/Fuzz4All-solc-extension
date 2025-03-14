pragma solidity ^0.8.0;
contract Example
{
    uint x;  uint public y;

    function setter(uint _x, uint _y) public {
        x = _x; y = _y;
    }
}
