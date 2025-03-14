pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator8 {	mutator7 data;
	constructor() {
		data.h = 10;
		data.j = 10;
	}
	function modify() public {
	  data.h = 40;
	  data.j += 14;
	  data.j -= 14;
	}
}
