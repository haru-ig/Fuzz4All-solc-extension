pragma solidity ^0.8.0;

contract ArrayInterface {
    function min(uint[] memory arr1, uint[] memory arr2) public view returns (uint);
    function max(uint[] memory arr1, uint[] memory arr2) public view returns (uint);
    function sum(uint[] memory arr1, uint[] memory arr2) public view returns (uint);
    function set(uint[] memory arr, uint val, uint index) public;
    function show(uint[] memory arr, bool flag) public;
    function sort(uint[] memory arr) public;
}
