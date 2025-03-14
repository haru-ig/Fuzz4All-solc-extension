pragma solidity ^0.8.0;
contract C {
    constructor() {
    }
    function g() public pure {}
    receive () external pure {
        bytes memory mem = new bytes(8);
    }
}
