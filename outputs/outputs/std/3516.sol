pragma solidity ^0.8.0;
contract Multiply {
    struct MultiplicationResult {
    	uint256 product;
    	uint256 remainder;
    }
    function multiply(uint256 x, uint256 y) public pure returns (MultiplicationResult memory) {
    	MultiplicationResult memory memoryResult;
        memoryResult.product = x * y;
        memoryResult.remainder = remainder;
        return memoryResult;
    }
}
contract MyContract {
	uint256 constant MIN_VALUE = 100;
	uint256 constant MAX_VALUE = 200;
    struct MemoryWrapperInfo {
    	uint16 numBytes;
    	bytes32[] memoryValues;
    }
    MemoryWrapperInfo memory wrapperInfo;

	function getWrapperInfo() public view returns (MemoryWrapperInfo memory) {
    	return wrapperInfo;
    }

    function setNewMemoryInfo(uint16 newNumBytes, bytes32[] memory newValues) public returns (bool) {
    	wrapperInfo.numBytes = newNumBytes;
    	wrapperInfo.memoryValues = newValues;
    	return true;
    }

    function getNumberFromByteArray() public view returns (uint256) {
    	for (uint256 i = 0; i < wrapperInfo.numBytes; i++) {
    		uint256 x = (256*(wrapperInfo.memoryValues[i]>>24)) + (wrapperInfo.memoryValues[i] / 16) + wrapperInfo.memoryValues[i]%16;
    		x += (wrapperInfo.memoryValues[i+1] / 65536) + wrapperInfo.memoryValues[i+1] % 65536;
    		x += (wrapperInfo.memoryValues[i+2] / 65536) + wrapperInfo.memoryValues[i+2] % 65536;
    		x += (wrapperInfo.memoryValues[i+3] / 65536) + wrapperInfo.memoryValues[i+3] % 65536;
    		x = x*((wrapperInfo.memoryValues[i] << 8) <=> wrapperInfo.memoryValues[i+1]) + wrapperInfo.memoryValues[i+1];

    		uint256 maxBytes = uint256(uint8(uint16((1<<24) + 1)));
    		if (x > maxBytes) {
    			return 2**(256 - (((x - maxBytes) >> 8) % 8));
    		} else {
    			return x;
    		}
    	}
    	return wrapperInfo.memoryValues[wrapperInfo.numBytes - 1];
    }
}
