pragma solidity ^0.8.0;
contract Array {
	function findMin(uint[] memory a) public pure returns(uint){
		uint min = a[0];
		for (uint i = 1; i < a.length; i++) {
			if (min > a[i]) {
				min = a[i];
			}
		}
		return min;
	}
}
