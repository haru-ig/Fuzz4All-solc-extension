pragma solidity ^0.8.0;
contract MyContract {
    bytes32 public myconst;
    bytes32 mybytes;
    constructor() {
        mybytes = "Hello World";
    }
    function f() public {
        mybytes = mybytes + " World";
    }
}
