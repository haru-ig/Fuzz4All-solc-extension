pragma solidity ^0.8.0;
contract ArrayMut
{
	function min_v_max() public pure returns(uint256 _a, uint256 _b){
		uint256 _a2 = 5;
		uint256 _b2 = 3;
		uint256 _c=_a2;_a = _a2;_b = _c;
		if(_b>_a2)
	        _a = _a+_b;_b=_a-_a;
		else
	        _a = _a;
		if(_a>1)
	        _b = _a-1-_b;_a = _b+_a;
		return (_a,_b);
	}
	function f_2525() public pure returns(uint256 _a){
		uint256 _a2 = _a;
		return _a2;
	}
}
