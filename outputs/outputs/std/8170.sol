pragma solidity ^0.8.0;
contract Array {
    using Math for uint;

    uint[] array;
    uint min;
    uint max;

    function minimum() public view returns (uint) {
        return min;
    }
    function maximum() public view returns (uint) {
        return max;
    }
    function sum() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < count; i++) {
            sum += array[i];
        }
        return sum;
    }
    function count() public view returns (uint) {
        return array.length;
    }
    function get(uint i) public view returns (uint) {
        uint c = i.add(1);
        uint j = count;
        while (c > 0) {
            j = j.sub(1);
            c = c.div(2);
        }
        for (i = j + 1; i >= 0; i--) {
            array[i] = array[i - 1];
        }
        array[0] = i;
        return i;
    }
    function sort() public {
        uint index = count - 1;
        while (index > 0) {
            uint i = 0;
            uint j = count - 1;
            while (j >= 0 && array[j] < array[i]) {
                i = i.add(1);
                j = j.sub(1);
            }
            if (j < count && array[i] == array[j]) {
                i = get(i);
            }
            else {
                uint temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
}
