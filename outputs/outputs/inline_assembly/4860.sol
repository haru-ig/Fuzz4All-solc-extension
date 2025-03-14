pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator6 {
	struct mutator6 {
		uint h;
		uint i;
	}
	mutator6 public data;
	constructor(uint num) {
		data.h = 20;
		data.i = 20;
		data.h += num*271;
	}
}
