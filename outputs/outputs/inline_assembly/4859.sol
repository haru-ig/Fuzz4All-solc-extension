pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator6 {
	struct mutator6 {
		uint h;
		uint i;
	}
	mutator6 public data;
	constructor() {
		data.h = 20;
		data.i = 20;
	}
	function modify() public {
	  data.h = 0;
	  data.i += 10;
	  data.i -= 10;
	}
	function modify2() public {
	  data.h = 0;
	  data.i += 10;
	  data.i += 10;
	}
}
