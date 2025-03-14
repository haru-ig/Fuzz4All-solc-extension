pragma solidity ^0.8.0;
contract C {
	function x() public returns(uint) {
		return 0xab;
	}
	bytes32 constant hash = "x";

	function f() public {
		bytes memory empty;
		assembly {
			let ptr := mload(add(hash, 32))
			if (ptr eq 0) {
				mstore(1, empty)
				mstore(ptr, 0)
				return
			}
			revert(ptr, mload(ptr))
			return
		}
	}
}
