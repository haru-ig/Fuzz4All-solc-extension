pragma solidity ^0.8.0;
contract C {
	struct BData {
		uint id;
		string name;
		uint number;
		bool boolVal;
		mapping (uint => bytes) users;
	}
	mapping (uint => uint) x;
	uint public i;
	modifier check() {
		i++;
		revert();
	}
	constructor() public {
		i=100;
	}
	function getData() public view returns (BData memory) {
		BData memory data;
		data.boolVal = true;
		data.users[balances.id] = 'bytes';
		if (balances.boolVal) {
			data.number = 4200;
			data.name = 'SomeRandomString';
			data.id = 99;
		} else {
			data.number = balances.number % 100;
			data.name = 'Name'+ uintToString(balances.number);
			data.id = 999;
			data.users[100] = 'bytes';
		}
		return data;
	}
	function setName(string memory _newName) public returns (bool) {
		balances.name = _newName;
		return true;
	}
	modifier check() {
		i++;
		revert();
	}
	function setNameFromUser (uint _id, string memory _newName) public returns (bool) {
		balances.users[_id] = _newName;
		return true;
	}
	function getID(uint _balanceId, uint _newId) public check returns (bool) {
		balances.id = _newId;
		return true;
	}
	function getUserName(uint _id) public view returns (string memory) {
		return balances.users[_id];
	}
	function getUser(uint _amount, uint _id) public view returns (bytes memory) {
		return balances.users[_id];
	}
}
