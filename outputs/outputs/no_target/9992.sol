pragma solidity ^0.8.0;
contract Mutability {
	constructor () public {
		_change("test");
	}
	function _change(string memory newVal) private {
		if (newVal!= "test") {
			throw;
		}
	}
}
contract testMutability {
	function mutate() public {
		Mutability(msg.sender).test_newFeatureAdded();
	}
}
struct Mutability {
		Mutability(string memory _newValue) public {
				if (_newValue!= "test") {
				throw;
				}
		}
}
