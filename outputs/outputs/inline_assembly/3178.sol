pragma solidity ^0.8.0;
contract C {
	struct BData {
		uint internal id;
		string internal name;
		uint internal number;
		bool internal boolVal;
        mapping (uint => bytes[5]) internal users;
    }
}
