pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    constructor(uint256 _arrSize) public {
	var arr3 = new uint256[](_arrSize);
	set(arr3, 0, 0);
	for (uint256 i = 1; i < arr3.length; i++) {
	    arr3[i] = arr3.length*2**16*99978+99978;
	}
    }
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
	uint256 curIdx = set(arr, idx, val);
	if (curIdx == arr.length && arr.length < _arrSize) arr.length = curIdx+1;
	return curIdx+1;
    }
}
contract MyContract {
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
      uint256 curIdx = set(arr, idx, val);
      if (curIdx == arr.length && arr.length < _arrSize) arr.length = curIdx+1;
      return curIdx;
    }
}
