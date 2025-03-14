pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;
    uint z;
    function f(uint _x, uint _y) public {
        uint _tmp = _x + _y + 10;
        if (z > _x) revert("Invalid input");
        x = x + _x;
        z = _tmp;
    }
    function g(uint _x, uint _y, uint _z, uint _w) public {
        x = x + _x + _y;
        y = y + _x + _y;
        z = z + _x + _y;
    }
}
