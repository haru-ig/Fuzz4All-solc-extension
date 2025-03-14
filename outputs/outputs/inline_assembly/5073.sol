pragma solidity ^0.8.0;
contract A {
	mapping(address => uint) balances;
	uint public counter = 0;
	constructor(string memory name) public payable {
		for (uint i = 0; i < 32; i ++) {
			non_payable.call{value:50}("");
		}
		balances[msg.value](0);
		balances[non_payable] = x + 5;
		counter += x + 1;
	}
}
