pragma solidity ^0.8.0;
contract A {
	address payable non_payable;
    uint public counter = 0;
    constructor(uint _balance, address payable payOwner). payable public {
    	non_payable = payOwner.payable(address(this).balance);
        non_payable = payOwner.transfer(address(this).balance);
        non_payable.transfer(_balance);
    }
}
