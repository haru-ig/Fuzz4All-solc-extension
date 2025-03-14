pragma solidity ^0.8.0;
contract Test28 {
    bytes32[] public ids;
    constructor() {
        ids.push("X");
    }
    function f(uint n) public {
        ids.push("Z");
        ids.push("Y");
        ids.push("X");
        ids.push("W");
    }
}
