pragma solidity ^0.8.0;
contract Modification {
    int256 public x;
    bytes32 public y;
    function f(bytes32 _y) public {
        x = 1;
        uint w = _y.length;
        if (_y == "") {
            x = 2;
            y = _y;
        }
    }
}
