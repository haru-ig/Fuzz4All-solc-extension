pragma solidity ^0.8.0;

contract simple3 {
	uint[] data;

	constructor() {
		data.push(0);
		data.push(42);
		data.push(42);
		data.push(0);
	}

	fallback() external {
		revert();
		data[0] = 0;
	}
}
