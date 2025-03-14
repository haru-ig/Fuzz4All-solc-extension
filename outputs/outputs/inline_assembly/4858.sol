pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator6 {
	struct mutator6 {
		uint h;
		uint j;
	}
	mutator6 public data;
	constructor(mutator5 memory memoryIn) {
		data.h = memoryIn.h + 20;
		data.j = memoryIn.i;
	}
	function modify5() public {
	  data.h = 10;
	}
}
