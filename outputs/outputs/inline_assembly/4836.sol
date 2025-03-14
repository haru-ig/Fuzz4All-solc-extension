pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint h;
		bytes1 b;
	}
	uint bytes_left;
	mutator public data;
	constructor(uint b_length) {
		bytes_left = b_length;
		data.h = 20;
		data.b[0] = 1;
	}
	function modify() public {
		for (uint i = 0; i < bytes_left; i++) {
			data.b[i] += 1;
		}
		bytes_left += 1;
	}
}
