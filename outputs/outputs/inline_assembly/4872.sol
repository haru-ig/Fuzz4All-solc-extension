pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct mutator8 {
	uint h;
	uint j;
}
contract mutator8b is mutator8 {
	constructor () {
		data.h = 256;
	}
	function modify() public {
	  data.h += 1;
	}
}
