pragma solidity ^0.8.0;
contract C {
	struct BData {
		uint id;
		string name;
		uint number;
		bool boolVal;
		mapping (uint => bytes) users;
		bytes[] public bigBytes;
		bool[] public bigBools;
		mapping (address => bool) public mapBool;
	}
	BData public balances;
}
```

# Advanced Topics (10 bonus points)

## Bounty

[View full issue](https:

## Resources

- https:
