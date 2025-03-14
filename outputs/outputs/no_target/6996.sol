pragma solidity ^0.8.0;
contract MutateWithModifications {
	address[] private owner;
	address private owner1;
	address[] private owner2;
	constructor() {
		owner.push(msg.sender);
		owner1 = msg.sender;
		owner2.push(msg.sender);
	}
	function setOwner(uint index, address _address) public {
		owner[index] = _address;
	}
	function setOwner1(uint index, address _address) public {
		owner1[index] = _address;
	}
	function setOwner2(uint index, address _address) public {
		owner2[index] = _address;
	}
}
