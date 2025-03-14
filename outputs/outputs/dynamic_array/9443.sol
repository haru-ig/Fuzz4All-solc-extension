pragma solidity ^0.8.0;
contract Arrays12{
	bool public b;
	constructor(){
		b = s();
	}
	mapping(uint256 => uint256) storage public st2;
	function s() private view returns (uint256 s2){
		return st2[b.length];
	}
	function t() private view returns (uint256 s2){return st[1];}
	uint256 st2;
	uint256 st;
	constructor() public{
		b = s();
	}
}
