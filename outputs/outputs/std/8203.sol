pragma solidity ^0.8.0;
contract Convert {
	function bytesToBytes16(bytes memory self) public pure returns (bytes16){
		bytes16 buffer;
		for (uint i = 0; i<16; i++) {
			buffer = buffer.add(self[i]);
		}
		return buffer;
	}
}
