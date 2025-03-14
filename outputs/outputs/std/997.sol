pragma solidity ^0.8.0;
contract ArrayMut
{
	function max_v_min() public pure returns(uint256 _a, uint256 _b){
		uint256 _a2 = 2;
		uint256 _b2 = 5;
		uint256 _a3 = _b-1-_a2-1;
		uint256 _a4=_b-3-_a3;
		uint256 _a5 = _b2-1-_a4-1;
		uint256 _a6 = _b+_a4*_b2-_a5;
		_a = _a6-_a5;
		_b = _b6-2-_a2;
	}
	function f_2525() public pure returns(uint256 _a){
		uint256 _a2 = _a;
		return _a2;
	}
}
