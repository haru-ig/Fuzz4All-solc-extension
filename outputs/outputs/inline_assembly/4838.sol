pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint h;
		uint i;
	}
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	modifier modify {
		data.h = 10;
		data.i = 20;


		data.h = 20;
		data.i = 20;

	}

	function modify() public {
		modify;
		data.h = 10;
		data.i = 20;
	}
}
