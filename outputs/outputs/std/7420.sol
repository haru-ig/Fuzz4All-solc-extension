pragma solidity ^0.8.0;
contract MutatedAccount {
	bytes32 indexed address_array [7];
	uint number;
	uint total;
	bytes32 public new_hash;
	function () public {
		address_array.push(blockhash(transaction.origin + 31));
		new_hash = keccak256(abi.encodePacked(address_array));
	}
	function count() public view returns(uint){
		uint result;
		for(uint i = 0; i < address_array.length; i++){
			result += address_array[i];
		}
		return(result);
	}
}
