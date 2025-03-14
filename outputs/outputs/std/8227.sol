pragma solidity ^0.8.0;

contract Array {
	uint[] array;
	uint length;

	function set(uint i, uint x) public {
        array[i] = x;
    }
    function get(uint i) public view returns(uint) {
        return array[i];
    }
    function empty() public view returns(bool) {
        return (length == 0);
    }
    function add(uint x) public {
        array.push(x);
        length++;
    }
    function findMin() public view returns(uint) {
        uint min_value = 1024;
        for (uint i; i < array.length; i++){
            if (array[i] < min_value) {
                min_value = array[i];
            }
        }
        return min_value;
    }
    function findMax() public view returns(uint) {
        uint max_value = 0;
        for (uint i; i < array.length; i++){
            if (array[i] > max_value) {
                max_value = array[i];
            }
        }
        return max_value;
    }
    function sum() public view returns(uint) {
        uint sum = 0;
        for (uint i; i < array.length; i++){
            sum += array[i];
        }
        return sum;
    }
    function sort() public {
        uint[] storage values = array;
        for (uint i; i < length; i++){
            uint min = i;
            for (uint j; j < length; j++){
                if(values[j] < values[min]){
                    min = j;
                }
            }
            uint swap_temp = array[i];
            array[i] = array[min];
            array[min] = swap_temp;
        }
    }
}
contract Memory {
    address[] memory addresses;
    uint[] memory lengths;
    uint[] memory counts;
    uint max_length;
    uint[] results;

    function setAddress(uint index, address _addr) public {
        addresses[index] = _addr;
    }
    function getAddress(uint index) public view returns(address) {
        return addresses[index];
    }
    function setLength(uint index, uint _length) public {
        lengths[index] = _length;
    }
    function getLength(uint index) public view returns(uint) {
        return lengths[index];
    }
    function setCount(uint index, uint _count) public {
        counts[index] = _count;
    }
    function getCount(uint index) public view returns(uint) {
        return counts[index];
    }
    function getMax(uint index) public view returns(uint) {
        return max_length
