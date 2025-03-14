pragma solidity ^0.8.0;
contract Modification {
    int256 constant public x = 1;
    bytes32 public y;
    uint w;
    constructor() {
        y = "";
        w = 0;
    }
    function f(bytes32 _y) public {
        if (msg.data!= "")
            w = 0;
        x = 2;
        y = _y;
    }
}
