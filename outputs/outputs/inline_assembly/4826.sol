pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint64 h;
		uint64 i;
	}
	mutator public data = mutator(0, 2);
	constructor() public {
		data.i = data.i;
	}
	function modify() public {
		data.i = data.i;
	}
}
