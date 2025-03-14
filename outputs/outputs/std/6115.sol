pragma solidity ^0.8.0;
contract Array {
    uint32[] memory array;
    function push(uint32 value) public {
        if (array.length == 0) {
            array.length++;
        }
        array[array.length] = value;
    }
    function pop() public view returns(uint32) {
        require (array.length > 0);
        uint32 value = array[array.length - 1];
        array.length--;
        return value;
    }
    function set(uint32 index, uint32 value) public {
        require(index < array.length);
        array[index] = value;
    }
    function get(uint32 index) public view returns(uint32) {
        require(index < array.length);
        return array[index];
    }
    function length() public view returns(uint32) {
        return array.length;
    }
    function equals(uint32[] memory a, uint32[] memory b) public view returns (bool) {
        bool isEquals = true;
        for (uint32 i = 0; i < array.length && i < b.length; i++) {
            if (a[i]!= b[i]) {
                isEquals = false;
            }
        }
        return isEquals;
    }
}
