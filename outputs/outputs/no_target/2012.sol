pragma solidity ^0.8.0;
contract Semantic {
    int256 public x;
    function f(int256 _x) public {
        while (1 == _x) {
            _x = _x - 1;
        }
        x = x + _x;
    }
}
