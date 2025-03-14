pragma solidity ^0.8.0;
contract Array {
	struct ArrayElement {
		uint intData;
		uint compData;
	}

	uint numMaxElements;
	ArrayElement[] array;

	uint min;
	uint max;


	constructor(uint newNumMaxElements) {
		numMaxElements = newNumMaxElements;
		array = new ArrayElement[](newNumMaxElements);
		for (uint i = 0; i < array.length; i++) {
			array[i].intData = uint(i);
			array[i].compData = uint(i**2 + 127);
		}
	}


	function get(uint index) public view returns(uint){
		ArrayElement memory a = array[index];
		uint compInt = a.compData;
		uint intInt = a.intData;
		uint value = uint(intInt + compInt * 2 ** uint(256 - 7));
		return value;
	}


	function set(uint index, uint newIntData, uint newCompData) public {
		ArrayElement memory a = array[index];
		a.intData = uint(newIntData);
		a.compData = uint(newCompData);
	}


	function minimum() public view returns(uint){
		min = array[0].compData;
		for (uint i = 1; i < array.length; i++){
			if (array[i].compData < min) {
				min = array[i].compData;
			}
		}
		return min;
	}


	function maximum() public view returns(uint){
		max = array[0].compData;
		for (uint i = 1; i < array.length; i++){
			if (array[i].compData > max) {
				max = array[i].compData;
			}
		}
		return max;
	}


	function sum() public view returns(uint){
		uint value = 0;
		for (uint i = 0; i < array.length; i++){
			value += array[i].compData;
		}
		return value;
	}


	function indexOfMinimum() public view returns(uint){
		for (uint i = 0; i < array.length; i++) {
			if (array[i].compData < array[0].compData){
