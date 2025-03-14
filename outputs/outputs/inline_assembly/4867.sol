pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator8 {
	struct mutator8 {
		uint a;
		uint _x;
		uint b;
	}
	constructor() {
		data.a = 10;
		data._x = 8;
		data.b = data.a + data._x;
	}
}
