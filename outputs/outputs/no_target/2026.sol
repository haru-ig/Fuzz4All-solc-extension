pragma solidity ^0.8.0;
contract SemanticChange {
    int256 public x;
    bytes32 public y;
    function f(bytes32 _y) public {
        x = 1;
        if (_y == "") {
            x = 0;
            y = _y;
        }
    }
}
