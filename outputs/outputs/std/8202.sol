pragma solidity ^0.8.0;
contract Convert {
	function uintFromString(string memory s) public pure returns(uint){
		return uint(uint8(s[0]));
	}
}
