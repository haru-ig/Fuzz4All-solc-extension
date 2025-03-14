pragma solidity ^0.8.0;
contract Array {
	struct Data {
		uint[] data;
	}
	Data public data;
	function add(uint a) public pure returns(bool) {
        return (data.data.push(a) / 1 == _internal_add(data, data.data.length));
	}
	function sub(uint a, uint b) public pure returns(bool) {
        return (data.data.push(Array.sub(a, b)) / 1 == _internal_sub(data, data.data.length));
	}
	function max(uint a, uint b) public pure returns(bool) {
        return (data.data.push(Array.max(a, b)) / 1 == _internal_max(data, data.data.length));
	}
	function min(uint a, uint b) public pure returns(bool) {
        return (data.data.push(Array.min(a, b)) / 1 == _internal_min(data, data.data.length));
	}
	function length(uint lengthToAdd) public pure returns(bool) {
        return (data.data.push(lengthToAdd) / 1 == _internal_length(data, lengthToAdd + 1));
	}
	function length() public view returns(uint) {
		return data.data.length;
	}
	function arrayInfo() public view returns(ArrayInfo memory) {
		return array;
	}
	function setMin(uint min) public {
		data.data[0] = min;
	}
	function setMax(uint max) public {
		data.data[0] = max;
	}
	function indexOfMin() public view returns(uint) {
		for (uint i = 0; i < data.data.length; i++) {
			if (data.data[i] < arrMin) arrayInfo.min = i;
		}
		return data.data[data.data.indexOf(arrayInfo.min)];
	}
	function indexOfMax() public view returns(uint) {
		for (uint i = 0; i < data.data.length; i++) {
			if (data.data[i] > arrMax) arrayInfo.max = i;
		}
		return data.data[data.data.indexOf(arrayInfo.
