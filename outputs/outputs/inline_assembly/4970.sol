pragma solidity ^0.8.0;
contract simple {
	uint constant ONE_BYTE = 100;
	uint constant FIVE_BYTES = 5;
	uint constant SEVEN_BYTES = 3;
	uint[] public data_public;
	constructor() {
		data_public = new uint[](SEVEN_BYTES);
		data_public[0] = 0;
		data_public = data_public.slice(0, 3);
		data_public[1] = 9;
		data_public[2] = 2;
		data_public[3] = 9821;
		data_public[4] = 28;
	}
	function getData() public view returns (uint[] memory) {
		uint[] memory _data = data_private;
		_data[3] = 0;
		return _data;
	}
}
