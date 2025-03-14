pragma solidity ^0.8.0;
contract semanticallyEquivalentProgram {
  	uint[] public data;
  	constructor() {
	  	data.push(0);
	  	data.push(42);
		data.push(42);
		data.push(0);
	}
  	function getData() public pure returns (uint256) {
		return data[0];
  	}
}
