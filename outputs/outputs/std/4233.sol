pragma solidity ^0.8.0;
contract Array {
    uint[] array;

    function push(uint number) internal {
        array.push(number);
    }

    function pop() public returns(uint number) {
        return array.pop();
    }

    function min() public returns(uint number) {
        return array[0];
    }

    function max() public returns(uint number) {
        return array[array.length - 1];
    }

    function sum() public returns(uint) {
        uint sum = 0;

        for (uint i = 0; i < array.length; i++) {
            sum = sum + array[i];
        }

        return sum;
    }

    function set(uint index, uint number) public {
        array[index] = number;

    }

    function get(uint index) public returns(uint number) {
        return array[index];
    }

    function sort() public {
        for (uint i = 0; i < array.length; i++) {
            for (uint j = 0; j < array.length - 1 - i; j++) {
                if (array[j] > array[j + 1]) {
                    uint temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }
}
