pragma solidity ^0.8.0;
contract Convert {
	bytes32 constant charBytes = "1234567890abcdef";
	function bytes32ToString(bytes memory bytesIn) public pure returns(string memory) {
		bytes memory bytesStr = bytesIn;
		for (uint i = 0; i < bytesIn.length; i++){
			bytesStr[i] = bytes32ToString(bytes32(bytesIn[i]));
		}
		return string(bytesStr);
	}
	function bytes32ToString(bytes32 b) public pure returns (bytes memory) {
		bytes memory buf = new bytes(4);
		buf[0] = bytes4ToString(bytes32(b));
		buf[1] = bytes4ToString(bytes32(b >> 8));
		buf[2] = bytes4ToString(bytes32(b >> 16));
		buf[3] = bytes4ToString(bytes32(b >> 24));
		return buf;
	}
	function bytes4ToString(bytes4 b) public pure returns (bytes memory) {

		bytes memory buf = new bytes(1);
		buf[0] = bytes2ToString(bytes32(b));




	}
	function bytes2ToString(bytes2 b) public pure returns(bytes memory) {
		return bytes(charBytes[b] + charBytes[b >> 8]);
	}
}
