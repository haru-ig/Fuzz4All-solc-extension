pragma solidity ^0.8.0;
contract Add {
	uint public sum;
	function add(uint x, uint y) public pure returns(uint) {
		uint sum = x + y;
        return sum;
	}
}
contract Subtract {
	uint public difference;
	function subtract(uint x, uint y) public pure returns(uint) {
		uint difference = x - y;
        return difference;
	}
}
contract Multiply {
	uint public product;
	function product(uint x, uint y) public pure returns(uint) {
		uint product = x * y;
        return product;
	}
}
contract Divide {
	uint public quotient;
	function divide(uint x, uint y) public pure returns(uint) {
		uint quotient = x / y;
        return quotient;
	}
}
contract Array {
 	address[] public arrayAddress;
	uint[] public arrayData;
	uint[] public arraySubscript;
	uint public length;
	uint public arrayDataIndex;

	constructor() public {}

	function updateArrayData(uint newElement) public {
		arrayData[arrayDataIndex] = newElement;
		arrayAddress[arrayDataIndex] += 1;
        arrayDataIndex += 1;
	}

	function getArray(address addr) public view returns(uint[] memory){
        return arrayAddress;
    }

    function setArray(address addr, uint[] memory values) public {
        arrayAddress[addr] = addr;
        arrayData = values;
    }

    function getArrayData(address addr, uint n) public view returns(uint[] memory) {
        uint[] memory result;
        for (uint i = 0; i < arrayData.length; i++) {
            if (arrayAddress[addr] == arrayAddress[i]) {
                result[i] = arrayData[n];
            }
        }
        return result;
    }

    function setArrayData(address addr, uint n, uint[] memory values) public {
		for (uint i = 0; i < values.length; i++) {
			arrayData[arrayAddress[addr] + (i * 1)] = values[i];
		}
		arrayAddress[addr] += values.length;
    }

	function add(uint x, uint y) public pure returns(uint) {
		uint sum = x + y;
        return sum;
	}

	function subtract(uint x, uint y) public pure returns(uint) {
		uint difference = x - y;
        return difference;
	}

	function multiply(uint x, uint y) public pure returns
