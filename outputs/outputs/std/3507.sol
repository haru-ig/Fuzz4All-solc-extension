pragma solidity ^0.8.0;
contract Array {
    function min(uint256 a, uint256 b) public pure returns (uint256) {
    	if (a > b) return a;
        return b;
    }

    function max(uint256 a, uint256 b) public pure returns (uint256) {
    	if (a < b) return a;
        return b;
    }

    function sum(uint256[] memory array) public pure returns (uint256) {
        uint256  result;
        for(uint256 i = 0; i < array.length; i++) result += array[i];
        return result;
    }

    struct SetOfIntegers {
    	uint256 min;
    	uint256 max;
    	uint256 length;
    	uint256[] numbers;
    }

    uint256 public constant MAX_ARRAY_ELEMENT_NUMBERS = 125;
    function setOfIntegers() public pure returns (SetOfIntegers memory) {
    	uint256 min = 0;
    	uint256 max = 0;
    	uint256 length = 0;
        uint256[] memory numbers;
        for(uint256 i = 0; i < MAX_ARRAY_ELEMENT_NUMBERS; i++) {
        	uint256 number = uint256(randomInt(min, max));
            if (length == 0) {
                min = number;
                max = number;
            } else {
                if (number < min) {
                	min = number;
                }
                if (number > max) {
                	max = number;
                }
            }
            length++;
        }
        SetOfIntegers memory setOfIntegers;
        setOfIntegers.min = min;
        setOfIntegers.max = max;
        setOfIntegers.length = length;
        setOfIntegers.numbers = new uint256[](length);
        for(uint256 i = 0; i < length; i++) {
        	setOfIntegers.numbers[i] = uint256(randomInt(min, max));
        }
        return setOfIntegers;
    }

    function get(uint256[] memory array, uint256 index) public view returns (uint256) {
    	if (array.length > index) {
            return array[index];
        } else {
            return uint256(randomInt(array.min, array.max));
        }
    }

    function set(uint256[] memory array, uint256 index, uint256 value) public {
    	if (array.length > index) {
        	array[index] = value;
        } else {
        	uint256[] memory temporaryArray
