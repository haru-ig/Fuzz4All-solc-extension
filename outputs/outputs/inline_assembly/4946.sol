pragma solidity ^0.8.0;
contract simple2 {
	uint[] memory a;
	constructor() {
		a.push(0);
		a.push(42);
		a.push(42);
		a.push(0);
	}
	function getData() public view returns (uint) {
		uint[] memory _data = a;
		return _data[0];
	}
}
