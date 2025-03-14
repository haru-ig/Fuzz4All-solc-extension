pragma solidity ^0.8.0;
contract MutatedAccount {
	address public owner;
	constructor () {
		owner = msg.sender;
	}
}

pragma solidity ^0.8.0;
contract MutatedAccount is MutatedAccount {
	address public newOwner;
	uint public newOwnerAddress;
	address public newOwnerInstance;
	constructor () {
		newOwner = msg.sender;
	}
}
