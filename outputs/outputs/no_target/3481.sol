pragma solidity ^0.8.0;
contract m10 {
	event M10(uint256[] a, uint256 f);
	mapping(address => uint256) private map;
	constructor(uint256 v) { map[address(this)] = v; }
	function getValue() public view returns(uint256) { return map[address(this)]; }
}
