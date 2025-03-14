pragma solidity ^0.8.0;





import '@openzeppelin/contracts/utils/cryptography/ECDSA.sol';
import './Math.sol';


contract DisposalCenter {

	function first(uint256[] memory array) public pure returns (uint256) {
		return array[0];
	}


	function abs(uint256 element) public pure returns (uint256) {
		return element >= 0? element : 2 ** (256 - 2 * uint256(element));
	}



	function increase(uint256[] storage array, uint256 indexOne, uint256 indexTwo) public pure {
		uint256 i = indexOne + 1;

		uint256 toCopy;

		while (i < indexTwo + 1) {
			array[i] = array[i + 1];
			i++;
		}
		array[i] = abs(array[indexOne]);
	}


	function decrease(uint256[] storage array, uint256 indexOne, uint256 indexTwo) public pure {
		uint256 i = indexOne;
		uint256 j = i + 1;
		uint256 temp;

		while (array[i] < abs(array[indexTwo])) {
			j = j + 1;
			(temp, array[i]) = (array[i], array[j]);
			i = j;
		}
		array[j] = temp;
	}


	function sum(uint[5] memory array) public pure returns (uint sum, uint length) {
		sum = 0;
		length = 5;

		for (uint i = 0; i < array.length; i++) {
			sum = sum.add(abs(array[i]));
			length--;
		}
	}

	function isSorted(uint256[] memory array) public pure returns (bool isSorted) {
		bool flag = true;
		uint length = array.length - 1;

		for (uint i = 0; i < length; i++) {
			flag = flag & (array[i + 1] >= array[i]);
		}
		return flag & array[0] < abs(array[length]);
	}
}
