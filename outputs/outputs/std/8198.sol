pragma solidity ^0.8.0;
import "./Array.sol";
contract Convert {
	function convertToString(uint a) public pure returns(string memory){
		return intToString(a);
	}
	function convertToUint(string memory a) public pure returns(uint) {
		return stringToInt(a);
	}
}
