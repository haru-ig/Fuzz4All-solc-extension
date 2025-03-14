pragma solidity ^0.8.0;
contract simple2 {
	uint[] data;
	constructor() {
		data.push(0);
		data.push(42);
		data.push(42);
		data.push(0);
	}
	function getData() public view returns (uint) {
		uint[] memory _data = data;
		return _data[0];
	}
}
