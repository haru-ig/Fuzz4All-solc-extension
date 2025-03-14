pragma solidity ^0.8.0;
contract Test28b {
    bytes32[] public ids;
    constructor() {
        ids.push("X");
    }
    function f(uint n) public {
        ids.push("W");
        ids.push("Y");
        ids.push("X");
    }
}
