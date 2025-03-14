pragma solidity ^0.8.0;
contract Array2Mut {
	uint256 two;
	mapping (address=>uint256) mappingVal;
	mapping (address=>mapping (bytes32=>uint256)) mapping3;
	function set(uint256 key) public {
		mappingVal[msg.sender] = key;
		mapping3[msg.sender][keccak256(abi.encodePacked(msg.sender, msg.sender))] = mappingVal[msg.sender];
	}
	function get() public view returns (uint256) {
		return mappingVal[msg.sender];
	}
}
