pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated2 {
	struct mutated2 {
		uint a;
	}
	mutated2 public data;
	constructor() {
		data.a = 20;
	}
	function add1() public {
	  data.a += 1;
	}
	function add2() public {
	  mutated2 memory tmp = data;
	  data.a += 2;
	}
}
