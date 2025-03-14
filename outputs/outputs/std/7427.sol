pragma solidity ^0.8.0;
contract Multitest {
	uint number;
	address public owner;
	uint public initial_number = 1;
	constructor () {
		owner = msg.sender;
	}
	function Mutant() public {
		number = initial_number;
	}
}
