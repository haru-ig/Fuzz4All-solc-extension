pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_2 {
	mutated public data;
	constructor(uint x) {
		data.a = x;
	}
	function add1() public payable {
	   data.a += 1;
		data.a *= 2;
	}
}
