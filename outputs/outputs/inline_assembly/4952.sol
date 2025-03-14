pragma solidity ^0.8.0;
address A {
	mapping (uint=>uint) indexed uintId;
	mapping (uint=>uint) public uintId2;
	constructor() public {
		uintId[1] = 42;
	}
	function get(uint _uintId2) public view returns (uint) {

		uintId2[_uintId2] = uintId[_uintId2];
		return uintId2[_uintId2];
	}
}
