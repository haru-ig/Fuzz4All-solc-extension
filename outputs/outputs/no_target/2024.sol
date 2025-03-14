pragma solidity ^0.8.0;
contract Semantic {
    int256 public x;
    bytes32 public y;
    function f(bytes32 _y) public {

        int256 _y2 = int256(_y);

        y = _y;
        x = 1;
        uint w = y.length;
    }
}
