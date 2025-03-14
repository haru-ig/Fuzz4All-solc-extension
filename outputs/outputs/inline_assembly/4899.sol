pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated3 {
	function add1(uint a) public payable {
	  a += 1;
	}
	function add2(uint a) public payable {
	  a += 2;
	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated4 {
	struct mutated4 {
		uint a;
	}
	mutated4 public data;
	constructor() {
		data.a = 20;
	}
	function add1(uint a) public {
	  data.a += a;
	}
	function add2(uint a) public {
	  mutated4 memory tmp = data;
	  data.a += a;
	}
}
