pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator8 {
	struct mutator8 {
		uint h;
		uint j;
	}
	mutator8 public data;
	constructor() {
		data.h = 10;
	}
	function modify() public {
	  data.h += 1;
	  data.h -= 1;
	}
	function modify2() public {
	  data.h += 1;
	  data.h += 1;
	}
}
