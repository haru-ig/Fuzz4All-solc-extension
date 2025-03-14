pragma solidity ^0.8.0;
contract C {
	struct BData {
		uint id;
		string name;
		uint number;
		bool boolVal;
		mapping (uint => bytes) users;
	}
	BData public balances;
	struct S {
		string text;
		bool isPublic;
	}
	S public s;
	modifier smod {
		s.text = text().toLowerCase();
		return _;
	}
	function text() public view returns (string memory) {
		return s.text + ', '++(balances.users[_msgSender()]).length;
	}
}
