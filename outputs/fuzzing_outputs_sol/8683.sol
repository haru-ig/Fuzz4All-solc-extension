pragma solidity ^0.8.0;


contract Caller {
	function performTransaction(address sender) public returns (bytes32 transactionHash ){
		require(msg.value == 2 ether, "msg.value was not 2 ether");
		transactionHash = keccak256(abi.encodePacked(msg.value, "A", this));
	}
}
