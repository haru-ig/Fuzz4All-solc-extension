pragma solidity ^0.8.0;
contract Array3Array {
	uint[5] two;
	mapping (address=>uint256) mappingVal;
	mapping (address=>mapping (bytes32=>uint[0])) mapping3;
	function set(uint256 key) public {
		mappingVal[msg.sender] = key;
		mapping3[msg.sender][keccak256(abi.encodePacked(msg.sender, msg.sender, key))] = mappingVal[msg.sender];
	}
	function get() public view returns (uint[0]) {
		return mapping3[msg.sender][keccak256(abi.encodePacked(msg.sender, msg.sender))];
	}
}
