pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;



contract inlineAssembly4 {

	mapping(address => uint) public accounts;

	function setBalance(address account, uint balance) public {
		if (accounts[account]!= 0) return;
		accounts[account] = balance;
	}
}
