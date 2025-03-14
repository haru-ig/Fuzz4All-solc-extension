pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6 {
    uint[] public integers;

    function setRandomValues() public {
        uint length = integers.length;
        uint i;
        for (i = 0; i < length; ++i) {
            uint number = uint(uint64.random(block.timestamp)) % 101;
            integers[i] = number;
        }
        integers[i] = 0;
    }

    function setEmpty() public {
        integers.length = 0;
    }

    function testFind(uint value, uint index) public {
        uint element = integers[index];
        require(value == element);
    }

    function testSet(uint newValue, uint index) public {
        uint element = integers[index];
        integer[index] = newValue;
    }

    function testAppend() public {
        uint length = integers.length;
        uint element = value1(uint64.random(block.timestamp));
        integers[length++] = element;
    }

    function testSort() public {
        uint length = integers.length;
        for (uint i; i < length - 1; ++i) {
            uint element = integers[i];
            uint j;
            for (uint k = i + 1; k < length; ++k) {
                if (integers[k] < element){
                    j = k;
                }
            }
            if (i < j) {
                uint tmpTemp = integers[i];
                integers[i] = integers[j];
                integers[j] = tmpTemp;
            }
        }
    }

    function testSetEmpty() public {
        uint lengthBefore = integers.length;
        integers.length = 0;
        uint lengthAfter = integers.length;
        require(lengthBefore == lengthAfter);
    }

    function value1(uint64 timestamp) public pure returns (uint) {
        return timestamp;
    }
}
