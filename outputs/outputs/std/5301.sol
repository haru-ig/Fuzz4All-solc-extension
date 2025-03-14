pragma solidity ^0.8.0;
contract MyContract {
    uint i;
    constructor() {
        i = 1;
    }
    modifier onlyIfIIsEven() {
        if (i % 2 == 0) {
            _;
        }
    }
    receive () external payable {

    }
}
contract ArrayTest {

    function findMinimum(uint[] memory array) public returns (uint value) {
        uint min = array[0];
        for (uint i = 1; i < array.length; i++) {
            if (array[i] < min) {
                min = array[i];
            }
        }
        return min;
    }

    function findMaximum(uint[] memory array) public returns (uint value) {
        uint max = array[0];
        for (uint i = 1; i < array.length; i++) {
            if (array[i] > max) {
                max = array[i];
            }
        }
        return max;
    }

    function findSum(uint[] memory array) public returns (uint value) {
        uint sum = 0;
        for (uint i = 0; i < array.length; i++) {
            sum += array[i];
        }
        return sum;
    }
    function print() public {
        uint[9] memory array;
        addItem(array, 5);
        addItem(array, 7);
        addItem(array, 4);
        addItem(array, 6);

        uint minimum = findMinimum(array);
        uint maximum = findMaximum(array);
        uint sum = findSum(array);
        uint minimumMod128 = minimum % 128;
        uint maximumMod255 = maximum % 255;
        uint maximumMod128 = maximum % 128;

        assert(minimumMod128 == 4);
        assert(maximumMod255 == 128);
        assert(maximumMod128 == 4);
    }
    function addItem(uint[] memory array, uint item) public {
        array.push(item);
    }
}
