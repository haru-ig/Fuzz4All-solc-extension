pragma solidity ^0.8.0;
contract ArrayMut2 {
	uint64[5] public array;
	function get() public view returns(uint64) {
		return array[0];
	}
	function set(uint64 _x) internal {
		array[3] = _x;
	}
	function add(uint64 x) internal {
		array[4] = x + array[4];
	}
}
