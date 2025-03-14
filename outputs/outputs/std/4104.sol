pragma solidity ^0.8.0;
contract Array2Mut3 extends Array2Mut2 {
	constructor() Array2Mut2() public {
		two = 88;
	}
	uint256 three;
	mapping (address=>uint256)mappingVal;
	mapping (address=>mapping (bytes32=>uint256))mapping3;
}
