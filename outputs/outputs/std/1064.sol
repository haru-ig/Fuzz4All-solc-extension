pragma solidity ^0.8.0;
contract Array {
	uint256[] public num_arr;
	uint64[] public uint_arr;
	uint8[]  public byte_arr;
	mapping (address => uint256) public num_map;
	mapping (address => uint64) public uint_map;
	mapping (address=>uint8) public byte_map;


	function get_num(address addr, uint256 _num) public view returns (uint256) {
		return num_arr[_num];
	}


	function set_num(address addr, uint256 _num, uint256 _value) public pure {
		num_arr[_num] = _value;
	}

	function get_uint(address addr, uint256 _num) public view returns (uint64) {
		return uint_arr[_num];
	}

	function set_uint(address addr, uint256 _num, uint64 _value) public pure {
		uint_arr[_num] = _value;
	}

	function get_byte(address addr, uint256 _num) public view returns (uint8) {
		return byte_arr[_num];
	}

	function set_byte(address addr, uint256 _num, uint8 _value) public pure {
		byte_arr[_num] = _value;
	}


	function get_array(address addr, uint256 _index, uint256 _length) public view returns (uint256[5] memory) {
		uint256[5] memory v_arr = [0, 0,0, 0, 0];
		for (uint8 i=0; i<5; i++) {
			v_arr[i] = num_arr[_index + i];
		}

		return v_arr;
	}

	function get_num_map(address addr) public view returns (uint256){
		return num_map[addr];
	}

	function get_uint_map(address addr) public view returns (uint64) {
		return uint_map[addr];
	}

	function set_map(address addr, uint256 _key, uint256 _value) public pure {
		num_map[addr] = _value;
	}

	function set_map(address addr, uint64 _key, uint64 _value) public pure {
		uint_map[addr] = _value;
	}

	function set_map(address addr, uint8 _key, uint8 _value) public pure {
		byte_map[addr]
