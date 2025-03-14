pragma solidity ^0.8.0;
contract Test30 {
    bytes32[] public ids;
    uint i = 500;
    constructor() {
        for (i = 0; i < 73; i++) {
            ids.push("X");
            ids.push("Y");
            ids.push("Z");
            ids.push("W");
        }
    }
}
