pragma solidity ^0.8.0;
contract Array {
	function max(uint x, uint y) internal pure returns (uint memory max) {
		return x >= y? x : y;
	}
	function min(uint x, uint y) internal pure returns (uint memory min) {
		return x >= y? y : x;
	}
	function sum(uint[2] memory arr) internal pure returns (uint) {
		return arr[0] + arr[1];
	}
	function set(uint arr_index, uint value) internal {
		require(arr_index <= 2, "Index is too large!");
		arr[arr_index] = value;
	}
	function get(uint arr_index) internal view returns (uint) {
		require(arr_index <= 2, "Index is too large!");
		return arr[arr_index];
	}
	function array_test() public view {
		uint[2] memory arr = [10, 20];
		uint[2] storage arrStorage = arr;
		arrStorage[0] = 1000;
		uint min = 100;
		require(get(0) == 1000, "Expected 1000, not " + get(0));
		set(1, 10);
		require(get(1) == 10, "Expected 10, not " + get(1));
		require(get(0) == 1000, "Expected 1000, not " + get(0));
		require(get(1) == 10, "Expected 10, not " + get(1));
		require(get(1) == 100, "Expected 100, not " + get(1));
	}
	function array_test_index_set() public view {
		uint[2] memory v0 = [10, 20];
		uint[2] memory v1 = [30, 40];
		uint[2] storage v_storage0 = v0;
		uint[2] storage v_storage1 = v1;
		for(uint i = 0; i < 2; ++i) {
			v_storage0[i] = i + int(v_storage0[i]);
		}
		uint[4] memory v2 = [50, 60, 70];
		uint[4] storage v2_storage = v2;
		for(uint i = 0; i < 4; ++i) {
			assert(v2_storage[i] == i+50);
		}
		v2
