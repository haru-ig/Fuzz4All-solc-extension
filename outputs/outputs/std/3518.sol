pragma solidity ^0.8.0;
contract Convert {
    function convert(bytes memory stringData) public pure returns(uint256) {
    	uint256 data = 0;
    	for (uint256 i = 0; i < stringData.length; i++) {
    		data *= 10;
    		data += bytesToNumber(stringData[i]): 0;
    	}
    	return data;
    }
    function bytesToNumber(bytes memory b) private pure returns (uint256) {
        uint256 a = 0;
    	for (uint i = 0; i < b.length; i += 1) {
    		a = a*10u + bytesToNumber(b[i]): 0;
    	}
    	return a;
    }
}
