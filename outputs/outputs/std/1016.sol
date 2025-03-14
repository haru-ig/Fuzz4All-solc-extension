pragma solidity ^0.8.0;



contract Array
{

	uint256[5] public arr;

	function set_arr(uint256 _value) public {
		arr[0] = arr[1];
		arr[1] = arr[0];
		arr[2] = _value;
		arr[3] = _value;
		arr[4] = _value;
	}

	function get_arr() public view returns (uint256) {
		return arr[2];
	}

	function set_arr2(uint256 _value) public {
		arr[0] = arr[1];
		arr[1] = arr[2];
		arr[2] = _value;
		arr[3] = _value;
		arr[4] = _value;
	}

	function get_arr2() public view returns (uint256) {
		return arr[1];
	}

	function set_arr3(uint256 _value) public {
		arr[0] = arr[1];
		arr[1] = arr[2];
		arr[2] = _value;
		arr[3] = arr[2];
		arr[4] = _value;
	}

	function get_arr3() public view returns (uint256) {
		return arr[2];
	}

	function set_arr4(uint256 _value) public {
		arr[0] = arr[1];
		arr[1] = _value;
		arr[2] = arr[1];
		arr[3] = arr[1];
		arr[4] = _value;
	}

	function get_arr4() public view returns (uint256) {
		return arr[1];
	}

	function set_arr5(uint256 _value) public {
		set_arr2(_value);
		set_arr2(_value);
	}

	function get_arr5() public view returns (uint256) {
		require(2 == arr[0]);
		return arr[1];
	}

	function set_arr_all_arr(uint256 _value) public {
		arr[0] = _value;
		arr[1] = _value;



	}

	function get_arr_all_arr() public view returns (uint256) {
		return arr[2];
	}

	function set_arr_all_arr2(uint256 _
