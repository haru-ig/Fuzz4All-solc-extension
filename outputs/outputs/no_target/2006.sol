pragma solidity ^0.8.0;
contract Semantic {
    uint8 public x;
    function f(uint8 _x) public {
        if (254 >= _x) {
            revert("test");
        }
        x = x + _x;
    }
}
