pragma solidity ^0.8.0;
contract Array {
	int[10] arr = [ 0, 20, 30, 50, 40, 50, 60, 50, 70 ];
	function getMin(uint8[] memory arr) pure public returns (uint8 minValue) {
		minValue = arr[0];
		for (uint i = 0; i < 10; i++) {
			if (arr[i] < minValue) {
				minValue = arr[i];
			}
		}
	}
	function getMax(uint8[] memory arr) pure public returns (uint8 maxValue) {
		maxValue = arr[0];
		for (uint i = 0; i < 10; i++) {
			if (arr[i] > maxValue) {
				maxValue = arr[i];
			}
		}
	}
	function getSum(uint8[] memory arr) pure public returns (uint9 sum) {
		for (uint i = 0; i < 10; i++) {
			sum += arr[i];
		}
	}
}

pragma solidity ^0.8.0;
contract ArrayMultiply {
	function getSum(uint[] storage s) pure public returns (uint) {
		uint a = s[1];
		for (uint i = 1; i < s.length; i++) {
			a = s[i] * a;
		}
		return a;
	}
	function getMax(uint[] memory s) pure public returns (uint) {
		uint max = s[0];
		for (uint i = 0; i < s.length; i++) {
			if (s[i] > max) {
				max = s[i];
			}
		}
		return max;
	}
}

pragma solidity ^0.8.0;
contract ArraySquare {
	function getSum(uint[] memory s) pure public returns (uint) {
		uint sum = 0;
		for (uint i = 0; i < s.length; i++) {
			if (s[i] % 2 == 0)
