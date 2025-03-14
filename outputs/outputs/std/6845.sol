pragma solidity ^0.8.0;
contract Array {
    uint[] public numbers;
    function add(uint x) public pure returns (uint y) {
        y = x + 1;
    }
    function sub(uint x, uint y) public pure returns (uint z) {
        if (y > x) {
            y = x - 1;
        }
        z = y;
    }
    function multiply(uint z, uint y) public pure returns (uint yz) {
        yz = z * y;
    }
    function subtract(uint y, uint x) public pure returns (uint) {
        return x - y;
    }
    function set(uint val, uint index) public {
        numbers[index] = val;
    }
    function get(uint index) public view returns (uint) {
        return numbers[index];
    }
    function max(uint x1, uint x2) public pure returns (uint) {
        return x1 >= x2? x1: x2;
    }
    function min(uint x1, uint x2) public pure returns (uint) {
        return x1 >= x2? x2: x1;
    }
    function sum(uint[] storage arr) public view returns (uint total_sum) {
        for (uint i = 0; i < arr.length; i++) {
            total_sum += arr[i];
        }
    }
    function sort(uint[] storage arr, uint start_index) public pure {
        for (uint i = start_index; i < arr.length; i++) {
            uint temp = arr[i];
            uint j = i - 1;
            while (j >= start_index && arr[j] > temp) {
                arr[j+1] = arr[j];
                j--;
            }
            arr[j+1] = temp;
        }
    }
}
contract Multiply {
    uint[] multipliers;
    address[] address_to_names;
    function __Multiply_by_address__by_address__by_address__(address addr_from, address addr_to, uint val) public pure returns (uint total_val) {
        for (uint i = 0; i < addr_to_names.length; i++) {
            total_val += multipliers[index2Address(addr_to_names[i], addr_from)] * val;
        }
    }
    function __Multiply_by_address__by_address__(address addr, uint val) public pure returns (uint total_val) {
        for (uint i = 0; i < addresses.length; i++) {
            total_val += multipliers[index2Address(addresses[i], addr)] * val;
        }
    }
    function __Multiply_by_address__(address addr, uint val, uint end) public pure returns (uint total) {
        for (uint i = start_address; i <= end; i++) {
            uint total_val = multipliers[index2Address(addresses[i], addr)] * val;
            for (uint j = addresses.length - 1;; j--) {
                total += total_val*multipliers[j];
                if (j == addresses.length - 1){
                    break;
                }
            }
        }
    }
    function __Multiply_
