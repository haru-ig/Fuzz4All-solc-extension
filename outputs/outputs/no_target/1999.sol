pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function f(uint16 _x) public {
        if (16777215 > _x) {
            _x;
        }
        x = x + _x;
    }
}
