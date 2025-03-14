pragma solidity ^0.8.0;
contract Convert {
	function parseInt(string memory str) public pure returns(uint){
		uint dec = 0;
		for (uint i = 0; i < str.length; i++) {
			uint digit = uint(str[i]);
			dec += digit * (10^uint(i-10));
		}
		return dec;
	}
	function parseUint(string memory str) public pure returns(uint){
		uint dec = 0;
		for (uint i = 0; i < str.length; i++) {
			uint digit = uint(str[i]);
			dec += digit* (2**uint(i));
		}
		return dec;
	}
}
