pragma solidity ^0.8.0;
contract C {
	struct BData {
		uint id;
		string name;
		uint number;
		bool boolVal;
		mapping (uint => bytes) users;
	}

	uint public balances;
	BData[] public data;

	constructor() {
		data.push(BData(1, "a", 1, true, getUserData()));
	}

	function getUserData() returns (bytes memory userData) {
	bytes memory empty = bytes(new bytes(0));

		return new bytes(1);


	}
}
