pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint h;
		uint i;
	}
	mutator public data = mutator(0, 2);
	constructor() public {
		data.i = data.i + 1;
	}
}
