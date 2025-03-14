pragma solidity ^0.8.0;
contract Mutability {
	uint64[5] public immutable a;
	constructor (uint64[5] memory _a) public {
		a = _a;
	}
	function mutability() public view {
		a[4] = 2;

	}
}
