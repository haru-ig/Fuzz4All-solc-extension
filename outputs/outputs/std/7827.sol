pragma solidity ^0.8.0;
contract Array {
    uint256 arr[] = [0,
        uint256(1000),
        uint256(2000),
        uint256(3000)];
    uint256 element_count;
    uint256 minimum = uint256(2000);
    uint256 maximum = uint256(20000);
    function get_elem() public constant returns (uint) {
        return element_count;
    }
    function get_max() public constant returns (uint) {
        return maximum;
    }
    function get_min() public constant returns (uint) {
        return minimum;
    }
    function set_element_count(uint count) public {
        element_count = count;
    }
    function set_max(uint newmax) public {
        maximum = newmax;
    }
    function set_min(uint newmin) public {
        minimum = newmin;
    }
    function get_sum() public constant returns (uint) {
        uint sum = 0;
        for (element_count = 0; element_count < arr.length; counter_counter++) {
            sum = sum + array_elements[counter_counter];
        }
        return sum;
    }
    function find_min() public constant returns (uint) {
        return array_elements[0];
    }
    function find_max() public constant returns (uint) {
        return array_elements[arr.length - 1];
    }
    function find_average() public constant returns (uint) {
        uint sum = 0;
        for (uint counter_counter = 0; counter_counter < arr.length; counter_counter++) {
            sum = sum + array_elements[counter_counter];
        }
        return sum / uint(counter_counter + 1);
    }
    function find_sum_range(uint newmin, uint newmax) public constant returns (uint) {
        uint sum = 0;
        for (uint counter_counter = newmin; counter_counter <= newmax; counter_counter++) {
            sum = sum + array_elements[counter_counter - newmin];
        }
        return sum;
    }
    function find_max_min_range(uint newmin, uint newmax) public constant returns (uint, uint) {
        uint min = array_elements[0];
        uint max = array_elements[0];
        uint index_min = 0;
        uint index_max = 0;
        uint index_mid;
        for (uint counter_counter = 0; counter_counter < arr.length; counter_counter++) {
            if (array_elements[counter_counter] < min) {
                min = array_elements[counter_counter];
                index_min = counter_counter;
            }
            if (array_elements[counter_counter] > max) {
                max = array_elements[counter_counter];
                index
