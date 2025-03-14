pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator4 {
	struct mutator4 {
		uint h;
		uint i;
	}
	mutator4 private data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify4() private {
		data.i;
		data.h = 0;
	}
}
