pragma solidity ^0.8.0;
import "./IERC2612.sol";
contract Array {
    IERC2612[] private array;

    function findMinimum() public returns (uint256) {
        uint256 minimum = sub(array.length, 1);
        for (uint256 i = minimum; i > 0; i--) {
            if (array[i] > array[i - 1]) {
                minimum = i;
            }
        }
        require(array[minimum] < 0, "Array::findMinimum()");
        return minimum;
    }

    function findMaximum() public returns (uint256) {
        uint256 maximum = 0;
        for (uint256 i = 0; i < array.length; i++) {
            if (array[i] > maximum) {
                maximum = array[i];
            }
        }
        require(array[maximum] < 0, "Array::findMaximum()");
        return maximum;
    }

    function findSum() public returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < array.length; i++) {
            sum = add(sum, array[i]);
        }
        return sum;
    }

    function findCount(uint256 minValue) public returns (uint256) {
        uint256 count = 0;
        for (uint256 i = 0; i < array.length; i++) {
            if (array[i] >= minValue) {
                count += 1;
            }
        }
        return count;
    }

    function set(uint256 index, uint256 value) public {
        require(index < array.length, "Array::set()");
        require(array[index] < 0, "Array::set()");
        array[index] = value;
    }

    function get(uint256 index) public view returns (uint256) {
        require(index < array.length, "Array::get()");
        return array[index];
    }

    function swap(uint256 index1, uint256 index2) public {
        require(index1 < array.length, "Array::swap()");
        require(index2 < array.length && index1 < index2, "Array::swap()");
        uint256 value = array[index1];
        array[index1] = array[index2];
        array[index2] = value;
    }

    function sort() public {
        uint256 minimum = findMinimum();
        for (uint256 i = minimum + 1; i < array.length; i++) {
            uint256 temp = array[i];
            for (uint256 j = minimum; j > i; j--) {
                if (array[j] < temp) {
                    array[j] = add(array[j - 1], 1);
                } else {
                    break;
                }
            }
            array[
