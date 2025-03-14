pragma solidity ^0.8.0;
contract Equivalent {
	uint private data_private = 0;
	constructor() {
		emit Equivalent_Emit(0);
		emit Equivalent_Emit(2);
		emit Equivalent_Emit(5);
		data_private += 1;
		data_private += 2;
		data_private += 5;
	}
	function emit(uint i) public pure {
		emit P(i);
	}
	event P(uint i);
	function P(uint i) public pure {
		emit P(i);
	}
}
contract A {
	uint counter = 0;
	uint public x = 0;
	address payable non_payable;
	constructor() {
		non_payable.call{value:1000}("");
		counter += x + 1;
		non_payable.call{value:500}("");
		counter += x + 5;
	}
}
