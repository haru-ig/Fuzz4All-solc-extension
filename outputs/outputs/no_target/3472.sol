pragma solidity ^0.8.0;
contract m08 {
	event M8();
	mapping(uint256 => uint256) private m;
	constructor() { m[uint256(12345)] = 1;}
}
