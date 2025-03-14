pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator10 {
	struct mutator10 {
		uint a;
	}
	mutator10 public data;
	constructor() {
		data.a = 10;
	}
	function add1() public {
	  data.a -= 1;
	}
	function add10() public {
	  data.a -= 1;
	  data.a -= 1;
	}
}
