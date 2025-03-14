pragma solidity ^0.8.0;
contract Example
{
    uint x; uint public y; uint z;
    function getter() public view returns (uint _x, uint _y, uint _z) {
        _x = 200; _y = 200; _z = 200;
        _x += 1; _y += 1; _z += 1;
    }
}
