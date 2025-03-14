pragma solidity ^0.8.0;
mapping (address => uint) public balanceOf;
contract A {
	address payable non_payable;
	constructor() public {
		non_payable.transfer(balanceOf[msg.sender]);
	}
}
