pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y;
    uint z = 10;

    function simple(uint _x) public {
        y = z;
        x = _x;
        z = 0;
        uint _y = z + x;
        y = _y - x;
    }
}
