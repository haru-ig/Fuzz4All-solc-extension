pragma solidity ^0.8.0;
contract modified {
	uint[] private data_modified;
	constructor() {
		data_modified.push(0);
		data_modified[0] = 555;
		data_modified[3] = 1111;
		data_modified[6] = 2222;
	}
	function modifiedFunction() public view pure returns (uint) {
		uint[] memory _data = data_modified;
		return _data.length;
	}
}
