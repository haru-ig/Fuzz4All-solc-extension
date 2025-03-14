pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator13 {
	struct mutator13 {
		uint h;
		uint j;
	}
	mutator13 public data;
	constructor() {
		data.h = 10;
	}
	function modify() public {
	  data.h = 11;
	}
	function modify2() public {
	  data.h++;
	}
}
