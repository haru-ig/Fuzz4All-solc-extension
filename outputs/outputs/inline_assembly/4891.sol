pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated11 {
	struct mutated11 {
		uint a;
		uint b;
	}
	mutated11 public data;
	constructor() {
		data.a = 20;
		data.b = 15;
	}
	fallback function() public payable {

	}
	function add() public {
	  data.b += 1;
	  address payable addr = 0xd5474bb3871A11772135578Eea5445fB60AeD579;
	  addr.transfer(100*10**18);
	}
	function add2() public {
	  data.b += 2;
	  address payable addr = 0x0713ae1C5bC289B2B59ab2C8511291Cef6711641;
	  addr.transfer(10);
	}
	function add22() public {
	  data.b += 3;
	  data.b += 2;
	  address payable addr = 0xBA3849f1A484f6b7498a747D8C68eE096B5b5132;
	  addr.transfer(1);
	}
}
