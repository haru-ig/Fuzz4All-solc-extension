pragma solidity ^0.8.0;
contract Array {
	uint256 public i;
	uint256[] public arr;
	uint32 maxValue = 1000000;
	function test(uint256 len, uint8[] memory a) public {
	    arr = new uint[maxValue];
	    for (uint256 j = 0; j < arr.length; j++) {
	        arr[j] = i++;
	        len /= 10;
	    }
        for (uint256 j = 0; j < arr.length; j++) {
            len *= 10;
        }
		len = (len + 9) / 2;
	    for (uint256 j = 0; j < a.length; j++) {
	        a.length /= 10;
	    }
        for (uint256 j = 0; j < a.length; j++) {
            a.length *= 10;
        }
		arr[len] = 0x00;
         for (uint256 j = 0; j < arr.length; j++) {
            a.length *= 10;
        }
	}
}
