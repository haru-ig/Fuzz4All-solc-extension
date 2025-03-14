pragma solidity ^0.8.0;
contract Math
{
	function min(uint256 _1, uint256 _2) public pure { }
	function min(uint256 _1) public pure { }
	function max(uint256 _1, uint256 _2) public pure { }
	function max(uint256 _1) public pure {
		uint256 _22 = 5;
	}
	function sqrt_2(uint256 _a) public pure returns (uint256 _x){
		uint256 _33 = 4;
		_x = 0;
		while(_33 <= _a){
			if(_33 == _a){
				_x = _x + 1;
			}
			_x = _a-_x;
			_a = _33*2+1;
	}
	function sqrt_modp(uint256 _a, uint256 _m) public pure returns (uint256 _x){
		uint256 _33 = 4;
		_x = 0;
		while(_33 <= _a){
			if(_33 == _a){
				_x = _x + 1;
			}
			_x = (_x-(2*_a*_m)%_m);
			_a = _33*2+1;
	}
	function pow_modp(uint256 _x, uint256 _y,uint256 _m) public pure returns (uint256 _z){
		if (_y == 0) {return 1;}
		if (_y % 2 == 0) {
		_z = pow_modp(mul(_x,_x),div(_y,2),_m);
	}
	else{
	_z = mul(mul(_x,_x),_y%_m);
	}
	}
}
/* Please create a Semantic Equivalance Program, i.e. a program that:
1. takes an integer (in x) as input,
2. computes its square (x*x), rounded to the nearest integer,
3. computes the length of the length, rounded to the nearest integer, rounded at
