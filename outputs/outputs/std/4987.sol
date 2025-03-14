pragma solidity ^0.8.0;
contract Array_Example {
    Array arr;
    function push(uint256 elem) public {
        arr.push(elem);
    }
    function at(uint256 index) public view returns (uint256 element) {
        return arr.at(index);
    }
    function length() public view returns (uint256) {
        return arr.length;
    }
}
