pragma solidity ^0.8.0;
contract ArrayMut2
{
	function arraySum() public pure returns(uint256 _a){
		uint256 _a2 = 12;
		uint256 _b = _a2;
		_a = _a2+_b;
		_b = _b+_a;
		_a = _a2-_a+_a+_b-1-_b*2;
		_a = _a2-_a+_a-_a*3-2-_a+4-_a+1-_a+2-_a+3-_a+5-1-_b+3-_b-_a*_a-2*_a-1-_b-1-_b*_b-2*_b+1-_b*6+1-_b*7-2 *_b-4;
	}
}
