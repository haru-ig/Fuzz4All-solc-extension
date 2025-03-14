pragma solidity ^0.8.0;
contract Array2Mut {
	uint256 two;
	mapping (address=>uint256) mappingVal;
	mapping (address=>mapping (bytes32=>uint256)) mapping3;
	function set(bytes32 key) public {
		mapping3[msg.sender][key] = mappingVal[msg.sender];
	}
	function get(bytes32 key) public view returns (uint256) {
		return mapping3[msg.sender][key];
	}
}
