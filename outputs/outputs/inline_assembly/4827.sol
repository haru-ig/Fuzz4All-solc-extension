pragma solidity ^0.8.0;
contract mutator2 {
	struct mutator {
		uint h;
		uint i;
	}
	mutator public data = mutator(0, 2);
	constructor() public {
		data.h = data.h;
	}
	function modify() public {
		data.h = data.h;
	}
}
