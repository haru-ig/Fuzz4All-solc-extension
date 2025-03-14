pragma solidity ^0.8.0;
contract C {
    bytes32 public x;
    constructor(bytes32 _x) {
        x = _x;
    }
    receive() external payable {
        x++;
    }
}
