pragma solidity ^0.8.0;
contract Example {
    uint8 x = 1;
    uint16 y;
    uint256 z;
    function simple(uint16 _x) public {
        x = 5;
        z = _x ** 5;
        y = _x + x;
    }
}
