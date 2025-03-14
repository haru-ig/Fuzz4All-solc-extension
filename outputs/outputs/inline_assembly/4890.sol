pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated10 {
	struct mutated10 {
		uint a;
		uint b;
	}
	constructor() {
		data.a = 20;
		data.b = 15;
	}
	function add1() public {
	  data.b += 1;
	}
	function add2() public {
	  data.b = data.b + 1;
	}
	function add22() public {
	  data.b = data.b + 1;
	   data.b += 2;
	}
}
