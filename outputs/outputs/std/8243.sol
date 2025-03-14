pragma solidity ^0.8.0;
contract Memory {
	mapping (address => address) public lookup;
	address lookupFor(uint256 i) public returns (address) {
		return lookup[uint8(i)];
	}
}
