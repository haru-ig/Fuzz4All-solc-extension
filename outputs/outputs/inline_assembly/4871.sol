pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator9 {
	struct mutator9 {
		uint a;
	}
	mutator9 public data;
	constructor() {
		data.a = 10;
	}
	function add1() public {
	  data.a += 1;
	}
	function add12() public {
	  data.a += 1;
	  data.a += 1;
	}
}
