pragma solidity ^0.8.0;
contract Example
{
    uint constant x = 10; uint public y; uint z;
    function setter(uint _x, uint _y, uint _z) public {
        x = 200; y = 200; z = 200;
        x = _x; y = _y; z = _z;
    }
}
