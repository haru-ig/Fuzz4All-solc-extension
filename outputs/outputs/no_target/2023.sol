pragma solidity ^0.8.0;
contract Semantic {
    int256 public x;
    bytes32 public y;
    function f(bytes32 _y) public {
        uint w;
        x = 1;
        try {
            w = _y.length;
            y = _y;
        } catch(bytes memory) {
        }
    }
}
