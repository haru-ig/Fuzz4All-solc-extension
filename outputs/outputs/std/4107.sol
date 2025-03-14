pragma solidity ^0.8.0;
contract Array2Mut {
	uint256 two;
	mapping (address=>mapping (bytes32=>uint256)) mapping3 {
	   uint256(mapping3[mappingVal[msg.sender]]) = mappingVal[msg.sender];
	}
	function set(bytes32 key) public {
	   mappingVal[msg.sender] = mapping3[key];
	}
	function get(bytes32 key) public view returns (uint256) {
	   return mapping3[key];
	}
}
