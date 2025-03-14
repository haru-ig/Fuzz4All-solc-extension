pragma solidity ^0.8.0;
contract Bad {
	uint counter2;
	uint public data_public;
	address payable non_payable;
	constructor() {
		external.call{value:1000}("");
		inlineAssembly(data_public + data_public);
		non_payable.call{value:500}("");
		inlineAssembly(data_public);
	}
	function inlineAssembly(uint test) public {
		counter2 += test;
		counter2 += 1;
	}
}
