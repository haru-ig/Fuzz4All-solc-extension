pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint public h = 1;
		uint public i = 1;
	}
	mutator public data;
	constructor() public {
		data.i = data.i;
		data.h = 10;
		data.i = 5;
	}
}
