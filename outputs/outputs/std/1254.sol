pragma solidity ^0.8.0;
contract Contract {
    string public x;
    bytes32 public y;
    struct A {
        bytes32 x;
    }
    enum Z { A, B };
    constructor() {
        x =  "Hello, world!";
        y = bytes32(uint256(uint160(uint160(keccak256(abi.encodePacked("LSD")))))));
        x = x.toString();
    }
}
