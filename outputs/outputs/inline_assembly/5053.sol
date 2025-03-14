pragma solidity ^0.8.0;
contract Good {
	uint counter = 0;
	uint public data_public;
	address payable non_payable;
	constructor() {
		non_payable.call{value:1000}("");
		inlineAssembly(data_public += 1);
		non_payable.call{value:500}("");
		inlineAssembly(data_public += 5);
	}
	function inlineAssembly(uint test) public {
		counter += test + 1;
	}
}
