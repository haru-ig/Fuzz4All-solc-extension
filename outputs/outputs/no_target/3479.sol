pragma solidity ^0.8.0;
contract m08_1 {
	mapping(uint256 => uint256) private m;
	constructor() {
	}
	function get() public view returns (uint256) {
		m[uint256(12345)] = 1;
		return m[uint256(12345)];
	}
}
