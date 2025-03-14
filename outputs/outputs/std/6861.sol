pragma solidity ^0.8.0;
contract ArrayWithMethods {
    uint[] memory numbers;
    mapping(uint => uint) array;
    uint testarray[10] = [1, 2, 3, 2, 1, 1, 2, 1, 5];


    function addArray(uint[] memory _numbers) public {
        for (uint i = 0; i < _numbers.length; i++) {
            array.put(i, _numbers[i]);
        }
    }


    function getArrayByAddress(uint[] memory _numbers) public view returns (uint[] memory) {
        uint[] memory _result = new uint[](_numbers.length);
        for (uint i = 0; i < _numbers.length; i++) {
            if (array.get(i)!= 0) {
                _result[i] = array.get(i);
            } else {
                _result[i] = 0;
            }
        }
        return _result;
    }


    function updateArray(uint[] memory _numbers) public {
        uint[] memory array1 = new uint[](_numbers.length);
        for (uint i = 0; i < _numbers.length; i++) {
            array1[i] = array.get(i);
        }
        array.clear();
        array.put(_numbers.length, 42);
        array.put(42, 1);
        uint[] memory array2 = new uint[](array1.length);
        for (uint i = 0; i < array1.length; i++) {
            array2[i] = array1[i];
        }
        for (uint i = 0; i < _numbers.length; i++) {
            array1[i] = (_numbers[i] + 32);
        }
    }


    function getMin() public pure returns (uint) {
        return min(numbers);
    }


    function getSum(uint[] memory _numbers) public pure returns (uint) {
        return sum(numbers);
    }


    function getMax() public pure returns (uint) {
        return max(numbers);
    }


    function getLength() public pure returns (uint) {
        return numbers.length;
    }


    function getAt(uint) public pure returns (uint) {
        return numbers[i];
    }


    function max(uint[] memory _numbers) internal pure returns (uint) {
        uint max = 0;
        for (uint i = 0; i < _numbers.length; i++) {
            if (_numbers[i] > max) {
                max = _numbers[i];
            }
        }
        return max;
    }


    function min(uint[] memory _numbers) internal pure returns (uint) {
        uint min = 0xffffffffffffffffffffffffffffffff;
        for (uint i = 0; i < _numbers.length; i++) {
            if (min > _numbers[i]) {
                min = _numbers[i];
            }
        }
        return min;
    }


    function sum(uint[] memory _numbers)
