pragma solidity ^0.8.0;
contract Semantic {
    uint8 public x = 1;
    uint8 x;
    function f(uint8 _x) public {
        uint8 i = _x;
        _x = _x + _x;
        _x = _x + _x;
        _x = x + _x;
        _x = 2 * x + _x;
        _x = 2 * x + _x;
    }
}
