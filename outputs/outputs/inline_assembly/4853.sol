pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator5 {
	struct mutator5 {
		uint h;
		uint i;
	}
	mutator5 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify5() public {
	  data.i = 100;
	  data.h = 0;
	}
}
