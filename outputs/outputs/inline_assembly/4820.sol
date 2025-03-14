pragma solidity ^0.8.0;
contract mutator2 {
	struct mutator2 {
		uint h;
		uint i;
	}
    mutator2 public data = mutator2(0, 2);

	constructor() public {
		data.h = data.h;
	}

	function foo() public {
		data.h = data.h;
		data.i = data.i;
	}
}
