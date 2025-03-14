pragma solidity ^0.8.0;
contract Test29 {
    bytes32[] public ids;
    modifier g() {
        ids.push("P");
        _;
    }
    function f() public {
        ids.push("L");
    }
}
