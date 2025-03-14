pragma solidity ^0.8.0;
contract I {
    uint160 public constant value = 1;
    uint160 public constant b = 127;
    uint160 constant constantMax = uint160(2**128 - 1);
}
contract J {
    uint160 private constant value = 1;
    uint160 public constant b = 127;
    uint160 constant constantMax = uint160(2**128);
}
