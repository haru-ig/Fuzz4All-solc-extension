pragma solidity ^0.8.0;
contract Test29 {
    bytes32[] public ids;
    modifier g() {
        ids.push("X");
        _;
    }
    function f() public {
        g();
        ids.push("Y");
        ids.push("X");
        ids.push("W");
    }
}

contract Test30 {
    bytes32[] public ids;
    modifier g() {
        ids.push("X");
        _;
    }
    function f() public {
        ids.push("Y");
        ids.push("X");
        ids.push("W");
    }
}

contract Test31 {
    bytes32[] public ids;
    modifier g() {
        ids.push("X");
        _;
    }
    function f() public {
        ids.push("Y");
        ids.push("X");
        ids.push("W");
    }
}
