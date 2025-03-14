pragma solidity ^0.8.0;
contract simple3 {
	uint[] data;
	constructor() {
		data.push(0);
		data.push(42);
		data.push(42);
	}
	function getData() public view returns (uint) {
		return data[0];
	}
}
