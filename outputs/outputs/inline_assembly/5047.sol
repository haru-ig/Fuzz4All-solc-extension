pragma solidity ^0.8.0;
contract Bad {
	uint counter = 0;
	uint public data_public;
	constructor() {
		inlineAssembly(data_public += 1);
		inlineAssembly(data_public += 5);
		inlineAssembly(data_public += 3);
	}

	function inlineAssembly(uint test) public {
		counter += test + 1;
	}
}
