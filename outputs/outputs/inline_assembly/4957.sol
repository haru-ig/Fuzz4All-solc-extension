pragma solidity ^0.8.0;
contract simple {
	uint[] private data_private;
	uint public data_public;
	constructor() {
		data_private.push(0);
		data_private.push(42);
		data_private.push(42);
		data_private.push(0);
	}
	function getData() public view returns (uint) {
		uint _data = data_public;
		if (_data == 42) _data -= 2;
		return _data - data_public;
	}
	function setData(uint _data) public {
		data_public = _data;
	}
}
