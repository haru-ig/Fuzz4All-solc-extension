pragma solidity ^0.8.0;
contract A {
	address payable non_payable;
	constructor() public {
		non_payable.transfer(counter);
	}
}
