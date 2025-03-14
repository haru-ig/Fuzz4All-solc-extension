pragma solidity ^0.8.0;
contract simple2 {
	uint[] private data_private;
	constructor() {
		data_private.push(0);
		data_private.push(42);
		data_private.push(42);
		data_private.push(0);
	}
	function getData() public view returns (uint) {
		uint[] memory _data = data_private;
		_data.push(1);
		_data.push(7);
		data_private = _data;
		return _data[0] + _data.length;
	}
}
