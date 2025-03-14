pragma solidity ^0.8.0;
contract B {
    	constructor() public {
    		value = 1;
    	}
    	uint256 public value;
}
contract A is B {
    uint256 public immutable x;
}
