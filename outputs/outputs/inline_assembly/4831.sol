pragma solidity ^0.8.0;
contract mutator2 {
	struct mutator {
		uint h;
		uint i;
	}
	mutator public data;
	constructor() public {
		data = mutator(20, 20);
	}
	function modify() public {
		data = mutator(data.h, data.i);
		data.h++;
	}
}
