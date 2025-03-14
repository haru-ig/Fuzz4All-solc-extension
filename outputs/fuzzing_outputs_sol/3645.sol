pragma solidity ^0.8.0;
contract MutateSemantic5Caller2 {
	function modifyC(uint256 y) pure public returns (uint256 c) {
		return 3*y;
	}
}
