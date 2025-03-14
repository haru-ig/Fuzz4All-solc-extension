pragma solidity ^0.8.0;
contract A {
	address payable non_payable;
	uint public counter = 0;
	uint public x = 0;
	constructor() public payable{
			counter += x;
	}
}
