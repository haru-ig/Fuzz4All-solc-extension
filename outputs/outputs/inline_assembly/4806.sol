pragma solidity ^0.8.0;
contract mutator {
	address a;
	constructor() public {
		a = address(msg.sender);
	}
}
