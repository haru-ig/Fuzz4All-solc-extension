pragma solidity ^0.8.0;
contract Equivalent {
	uint private data_private = 0;
	constructor() {
		inlineAssembly;
		require(data_private >= 1);
		inlineAssembly;
	}
	function inlineAssembly() public {
		data_private += 1;
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
