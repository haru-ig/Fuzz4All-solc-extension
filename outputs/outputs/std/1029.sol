pragma solidity ^0.8.0;
contract ArrayMut4
{
	uint256 [] memory arr;
	function add(uint256 _a, uint256 _b) public{
		uint256 _sum = arr.push(_a+_b)+_a+_b;
	}
	function max_a_min(uint256[4] memory _a) public pure returns(uint256 _a2, uint256 _b2){
		uint256 _a3 = _a[3];
		return (_a2,_b2);
	}
}
