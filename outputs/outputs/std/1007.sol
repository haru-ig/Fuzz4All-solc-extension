pragma solidity ^0.8.0;
contract Array1to256
{
	uint256 f_2525();
	uint256[5]+uint256[3] _storage;
	function min_v_max() public pure returns(uint256 _a, uint256 _b){
		uint256 _a2 = 3;
		uint256 _b2 = 5;
		uint256 _c=_a2;_b = _b2;_a = _c;
		_a = _a2+_b2;
		_b = _b2+_a2;_b = _a+_b;
		_a = _b-_a;_b = _a-_b;
		_b = _c-1-_a;
	}
	function test_array() public pure returns(uint256[5][3]) {
		uint256[5][3] memory array;
		array[2][2] = uint256[2][2]([3,5]);
		return array;
	}
	function test() public pure returns(uint256 _a){
		uint256 _b = _storage[0];
		return _b;
	}
}
