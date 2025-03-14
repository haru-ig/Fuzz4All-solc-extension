pragma solidity ^0.8.0;
contract Array3Mut {
	uint256 two;
	mapping (address=>uint256) mappingVal;
	function set(uint256 value) public {
		mappingVal[msg.sender] = value;
	}
	function get() public view returns(uint256) {
		return mappingVal[msg.sender];
	}
}
