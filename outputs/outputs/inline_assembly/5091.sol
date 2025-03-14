pragma solidity ^0.8.0;
contract B {
	constructor (address payable _non_payable) public {
		uint public globalCount = 0;
		while (true) {
			non_payable.transfer(0);
			non_payable.transfer(0);
			non_payable.transfer(0);
			non_payable.transfer(0);
			non_payable.transfer(0);
			non_payable.transfer(0);
			non_payable.transfer(0);
			non_payable.transfer(0);
			non_payable.transfer(0);
			globalCount++;
			if (globalCount==20000) break;
		}
	}
}
