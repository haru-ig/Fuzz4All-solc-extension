pragma solidity ^0.8.0;
contract mutatorB {
	struct mutatorB {
		uint h;
		uint i;
	}
	mutatorB pubic data = mutatorB(0, 20);
	constructor() public {
		data.h = 20;
	}
	function modify() public {
		data.i = data.h;
	}
}
