pragma solidity ^0.8.0;

contract mutator {
	struct mutator {
		uint h;
		uint i;
	}
	mutator public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify() public {
		data.h = 80;
		data.i = 30;
	}
}
