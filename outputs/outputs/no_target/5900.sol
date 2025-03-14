pragma solidity ^0.8.0;
contract C {
    bytes32 private _x;
    constructor() {
        _x = keccak256(abi.encodePacked(uint32(0)));
    }
}
