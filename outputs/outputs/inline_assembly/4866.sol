pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator {
	struct mutator {
		uint h;
		uint j;
	}
	mutator public data;
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
	  data.j = data.j + 14;
	  data.j = data.j - 14;
	}
}
