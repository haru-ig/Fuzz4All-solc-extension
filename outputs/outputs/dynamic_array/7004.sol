pragma solidity ^0.8.0;
contract Test7 {
    bytes32 public foobar;
    constructor() public {
    	foobar = keccak256("Hello");
    }
}
