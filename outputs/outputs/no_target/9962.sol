pragma solidity ^0.8.0;
contract semanticallyEquivalentToPreviouslyGenerated {
	uint16 x;
	uint16 xisBig;
	function add(uint number) public pure returns (uint) {
		uint result;
		if (number < 0) {
			return isNegative(number)? 0 : 1;
		}
		result = number + 1;
		return result;
	}

	function isNegative(uint number) internal pure returns (bool) {
		uint result;
		result = result << 16;
		result++;
		return (result!= number);
	}
}
