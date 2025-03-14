pragma solidity ^0.8.0;
contract C {
    uint32 private x;
    uint32 public y;
    constructor() {
        x = 4294967295;
        y = x;
    }
}
