pragma solidity ^0.8.0;
contract Array {
	function addArrays(uint[] memory a, uint[] memory b) public pure returns(uint){
		uint sum = 0;
		for (uint i = 0; i < a.length; i++) {
			sum += a[i];
		}
		for (uint j = 0; j < b.length; j++) {
			sum += b[j];
		}
		return sum;
	}
}
