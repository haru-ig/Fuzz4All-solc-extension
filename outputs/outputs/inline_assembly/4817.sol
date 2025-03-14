pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint h;
	}
	mutator public data;
	constructor() public {
		data.i = data.i;
	}
	function mutated(mutator memory a) private {
		a.i = 1;
		a.h = 2;
	}
}
