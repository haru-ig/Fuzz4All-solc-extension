pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator7 {
	struct mutator7 {
		uint h;
		uint j;
	}
	mutator7 public data;
	constructor() {
		data.h = 10;
		data.j = 10;
	}
	function modify() public {
	  data.h = 40;
	  data.j += 14;
	  data.j -= 14;
	}
	function modify2() public {
	  data.h = 40;
	  data.j += 14;
	  data.j += 14;
	}
}
