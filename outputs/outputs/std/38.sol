pragma solidity ^0.8.0;
contract Array {

    uint[] public _arr;

    function append(uint elementId) public {
        _arr.push(elementId);
    }

    function get(uint index) private view returns (uint) {
        return _arr[index];
    }
}
