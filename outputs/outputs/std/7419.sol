pragma solidity ^0.8.0;
contract MutatedAccount {
	uint public accountNumber;
	uint number;
	constructor (uint _accountNumber,uint number) {
		accountNumber = 1000;
	}
	function mutant(uint _accountNumber) public {
		for (bytes memory b in bytes32(uint256(_accountNumber))){
			accountNumber = accountNumber * 2000;
		}
		this.transfer(accountNumber);
		this.call{value: 0.001 ether}(address(this).balance);
	}
}

contract MutatedAccount {
	uint number;
	uint public initial_number = 1;
	constructor () {
		number = initial_number;
	}
	address address1;
	address address2;
	function mutant() public {
		address1 = address(this);
		address2 = address1;
	}
	function call_self() public {
		address2.transfer(1 ether);
	}
}
