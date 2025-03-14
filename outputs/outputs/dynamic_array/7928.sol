pragma solidity ^0.8.0;
contract Test28 {
    bytes32[] public ids;
    modifier g() {
        ids.push("X");
        _;
    }
    function f() public {
        ids.push("Z");
        ids.push("Y");
        ids.push("X");
        ids.push("W");
    }
}
