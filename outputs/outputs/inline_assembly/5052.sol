pragma solidity ^0.8.0;
contract Good {
	uint counter = 0;
	uint public data_public;
	constructor() {
		inlineAssembly2(data_public += 1);
		inlineAssembly2(data_public += 5);
		inlineAssembly2(data_public += 3);
	}
	function inlineAssembly(uint test) public {
		counter += test + 1;
	}

	function inlineAssembly2(uint test) public inlineAssembly {
		counter += test;
	}
}
