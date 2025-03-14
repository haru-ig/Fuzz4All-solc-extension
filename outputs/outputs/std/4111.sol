pragma solidity ^0.8.0;
contract ArrayMutToUint {
	address addr;
	function set(uint256 key) public {
		addr[msg.sender] = msg.sender;
		mapping3(addr)[keccak256("arrayMutToUint")] = key;
	}
	function get() public view returns (uint256) {
		return mapping3(addr)[keccak256("arrayMutToUint")];
	}
}
