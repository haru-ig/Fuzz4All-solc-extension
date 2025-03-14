pragma solidity ^0.8.0;
contract MutateAssembly9b is MutateAssembly9 {
	function test() public view {
		uint storage e = 1;
		assembly {
			let ptr := mload(0x0)
			mstore(0x0, add(1, ptr))
			mstore(0x0, mload(0x0))
		}
	}
}
