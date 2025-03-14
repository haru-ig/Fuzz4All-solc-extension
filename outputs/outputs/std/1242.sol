pragma solidity ^0.8.0;

contract Array {

	function min1(uint val1, uint val2) internal pure returns (uint) {
		return (val1 < val2)? val1 : val2;
	}


	function min2(uint val1, uint val2, uint val3) internal pure returns (uint) {
		return (val1 < val2)? (val1 < val3? val1 : val3) : (val2 < val3? val2 : val3);
	}


	function max1(uint val1, uint val2) internal pure returns (uint) {
		return (val1 > val2)? val1 : val2;
	}


	function max2(uint val1, uint val2, uint val3) internal pure returns (uint) {
		return (val1 > val2)? (val1 > val3? val1 : val3) : (val2 > val3? val2 : val3);
	}


	function sum1(uint val1, uint val2, uint val3) internal pure returns (uint) {
		return val1 + val2 + val3;
	}


	function sum2(uint val1, uint val2) internal pure returns (uint) {
		return val1 + val2;
	}


	function setOne(uint[] memory arr, uint idx) internal {
		uint val = arr[idx];
		arr[idx] = 0;
	}


	function set(uint[] memory arr, uint idx, uint val) internal {
		arr[idx] = val;
	}


	function sum(uint[] memory arr1, uint[] memory arr2) internal view returns (uint) {
		uint sum1 = 0;
		for (uint i = 0; i < arr1.length; i += 1) {
			sum1 += arr1[i];
		}
		for (uint i = 0; i < arr2.length; i += 1) {
			sum1 += arr2[i];
		}
		return sum1;
	}



	function sum2(uint[] memory arr1) internal view returns (uint) {
		uint sum1 = 0;
		for (uint i = 0; i < arr1.length; i++) {
			sum1 += arr1[i];
		}
		return sum1;
	}


	function del(uint[] memory arr, uint index) internal {
		if
