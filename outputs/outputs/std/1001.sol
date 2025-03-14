pragma solidity ^0.8.0;
contract ArrayMut
{
	function min_v_max() public pure returns(uint256 _a, uint256 _b){
		uint256 _a2 = 5;
		uint256 _b2 = 3;
		uint256 _c=_a2;_a = _a2;_b = _c;
		_a = (_a2+_b2);
		_b = (_b2+_a2);
		_b = (_a-_b);
		_a = (_b-_a);
		_b = _c-1-_a;
	}
}

contract ArrayMut
{
	uint8[] a;
	uint256 b;
	uint256 c;
	function min_v_max() public pure returns(uint256,uint256) {
		a[0] = 5;
		a[1] = 3;
		a[2] = 1;
		uint256 _a = a[0];
		a[2] = a[0];
		uint256 _b = a[1];
		a[0] = a[0];
		uint256 _c = a[1];
		a[1] = a[0];
		uint256 _a2 = (_a+_b);
		a[0] = a[1];
		uint256 _b2 = (_b+_a);
		a[1] = _a2;
		uint256 _a3 = b-_a;
		a[1] = _a3;
		b = c-1-_a;
	}
	uint256[3] get_v() public view returns(uint256 _a,uint256 _b,uint256 _c) {
		require(a.length == 0,"");
		a = [5,3];
		b = 2;
		c = 5;
		_a = a[0];
		a[0] = a[1];
		_b = a[0];
		a[0] = a[0];
