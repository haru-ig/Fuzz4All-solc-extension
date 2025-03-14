pragma solidity ^0.8.0;
contract m08b {
	mapping(uint256 => uint256) private m;
	constructor() {
		m[uint256(0xfffffffffffffff)] = 1;
		m[uint256(0xfffffffffffffff*2)] = 2;
		m[uint256(0xfffffffffffffff*3)] = 3;
		m[uint256(0xfffffffffffffff*100)] = 100;
		m[uint256(0xfffffffffffffff*100000)] = 1;
		m[uint256(0xfffffffffffffff*0x100000000000000)] = 1;
		m[uint256(0xfffffffffffffff*0xffffffffFFFFFFFFFFFFFFFFFFFFFFFFFFFFE37461772E10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)] = 1;
	}
}
