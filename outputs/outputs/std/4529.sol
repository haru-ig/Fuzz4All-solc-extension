pragma solidity ^0.8.0;
contract MyContract {
	uint x;
	mapping(uint => bool) array;
	mapping(uint => byte) bool_array;
	mapping(uint => uint) mapping_array;
	address owner;
	constructor() public {
		owner = msg.sender;
	}
	function setArray() public returns (uint size) {
		return (array[1]);
	}

	function () public payable {
		require(owner == msg.sender, "Caller not owner");
		bool_array[1] = 1;
		mapping_array[1] = 1;
	}
}
