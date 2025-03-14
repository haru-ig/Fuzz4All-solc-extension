pragma solidity ^0.8.0;

contract C {
	address owner;
	uint ethers = 10000;
	constructor() {
		owner = msg.sender;
		require(owner.send(ethers));
	}
}
