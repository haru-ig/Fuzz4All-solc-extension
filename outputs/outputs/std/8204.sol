pragma solidity ^0.8.0;
contract Convert {
	function stringToUint(string memory str) public pure returns(uint){
		uint temp;
		assembly {
			temp := mload(add(str, 32))
		}
		return temp;
	}
}
