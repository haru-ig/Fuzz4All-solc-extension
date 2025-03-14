pragma solidity ^0.8.0;
contract Array1 {
	int[] public _arr;
	constructor(int) public {
		_arr[0] = 333;
		_arr[1] = 666;
		_arr[2] = 999;
	}
}

pragma solidity ^0.8.0;
contract Array2 {
	int[] public _arr;
	constructor(int) public {
		_arr = new int[](3);
		_arr[0] = 333;
		_arr[1] = 666;
		_arr[2] = 999;
	}
	function read(int _index) public view returns(uint8) {

		require(_index>=0 && _index<_arr.length);
		return(uint8(_arr[_index]));
	}
	function write(int _index, uint8 _byte) public pure {
		_arr[_index] = _byte;
	}
}

pragma solidity ^0.8.0;
contract Array3 {
	int[] public _arr;
	constructor(int) public {
		_arr = new int[](3);
		_arr[0] = 333;
		_arr[1] = 666;
		_arr[2] = 999;
	}
	function create(uint8 _byte) public {
		_arr.push(_byte);
	}
	function read(int _index) public view returns(uint8) {
		return(uint8(_arr[_index]));
	}
	function write(int _index, uint8 _byte) public pure {
		_arr[_index] = _byte;
	}
	function delete(int _index) public pure {
		bool _success = _arr[_index]==999;
		require(_success);
		_arr[_index] = 0;
	}
}
