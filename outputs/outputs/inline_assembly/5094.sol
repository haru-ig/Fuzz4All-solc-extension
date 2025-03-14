pragma solidity ^0.8.0;
contract A {
	address payable non_payable;
	address payable pay_to;
	uint public counter = 0;
	constructor() public {
		non_payable.transfer(pay_to);
	}
}
