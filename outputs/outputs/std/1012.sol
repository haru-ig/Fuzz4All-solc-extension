pragma solidity ^0.8.0;
contract MultiGen
{
	function max() public pure returns(uint256 _a, uint256 _b){
		uint256 _a2 = _a;
		uint256 _b2 = _b;
		uint256 _c=_a2;_a = _a2;_b = _c;
		_a = _a2+_b2;
		_b = _b2+_a2;_b = _a+_b;
		_a = _b-_a;_b = _a-_b;
		_b = _c-1-_a;
		var _r = _a2+_c;
	}
	function min2525() public pure returns(uint256 _a){
		uint256 _a2 = 5;
		return _a2;
	}
}
