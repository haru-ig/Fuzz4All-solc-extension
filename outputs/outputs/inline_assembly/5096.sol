pragma solidity ^0.8.0;
contract A {
	address payable non_payable;
	uint public counter = 0;
	constructor(uint _balance, address payable payOwner) public {
		non_payable = payOwner;
		non_payable.transfer(_balance);
	}
}
