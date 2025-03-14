pragma solidity ^0.8.0;
contract complex {
	uint[] private data_private;
	mapping (uint => bool) public data_mapping;
	constructor() {
		data_mapping[1001] = true;
	}
	function getData() public view returns (uint, uint[2] memory) {
		uint[] memory _data = data_private;
		_data[1] = 0xDEADBEEF;
		uint[2] memory _newMapping = [8005, 50];
		_data[3] = 0xFFFFFFFF;
		_data[4] = 0xDEADBEEF;
		uint[2] memory _newMapping2 = [8005, 50];
		_data[5] = 0xFFFFFFFF;
		uint index2 = 2;
		uint i2 = 6;
		_newMapping2[6] = 0xFFFFFFFF;
		_newMapping2[index2] = i2;
		for (uint i = 0; i < 2; i = i + 1) {
			uint _newMapping2_ = [1, i];
			_newMapping2 ^= _newMapping2_.shiftLeft(i);
		}
		data_mapping[1001] = true;
		return (data_mapping[1001]? 1001 : 0, _newMapping);
	}
}
