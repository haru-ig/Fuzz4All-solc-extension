pragma solidity ^0.8.0;
contract A {
	address payable non_payable;
	uint public counter = 0;
	constructor() public{}
	fallback () public {
		payable(non_payable).transfer(address(this).balance);
		non_payable = msg.sender;
	}
}
