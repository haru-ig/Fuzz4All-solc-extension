pragma solidity ^0.8.0;
contract Semantic {
    uint8 public x;
    function f(uint8 _x) public {
        if (254 >= _x) {
            _x;
        }
        x = x + _x;
    }
}
