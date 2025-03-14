pragma solidity ^0.8.0;
contract Semantic_checked {
    uint8 public x;
    function f(uint8 _x) public {
        if (x + 89 >= 254) {
            unchecked {
                x = x + _x;
            }
        }
    }
}
