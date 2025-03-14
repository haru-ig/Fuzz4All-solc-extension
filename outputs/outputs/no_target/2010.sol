pragma solidity ^0.8.0;
contract Semantic {
    int256 public x;
    function f(int256 _x) public {
        if (1 >= _x) {
            unchecked {
                return;
            }
        }
        x = x + _x;
    }
}
