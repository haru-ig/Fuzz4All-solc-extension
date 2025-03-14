pragma solidity ^0.8.0;
contract Convert {
	function hexStringToUint(string memory hexStr) public pure returns(uint) {
		uint res = 0;
		uint i = 0;
		for(i = 0; i < hexStr.length(); i++) {
			res = (res << 4) + uint(uint8(hexStr[i]));
		}
		return res;
	}
}
