pragma solidity ^0.8.0;
contract simple2 {
	constructor() {
		data_private.push(0xb0);
		data_private.push(0xb4);
		data_private.push(0xbc);
		data_private.push(0x0);
	}
	function getData() public view returns (uint) {
		uint[] memory _data = data_private;
		_data[0] = 0xd0;
		return _data[0];
	}
}
