pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity85_dynamicCalldataArrays {
    function callTest01(uint[] memory _arr) public view returns (uint[] memory) {

        _arr[0] = 10;
        return _arr;
    }
    function callTest02(address[] memory _arr) public view returns (address[] memory) {

        _arr[0] = 10;
        return _arr;
    }
    function callTest03(bytes memory _arr) public view returns (bytes memory) {

        _arr[0] = 10;
        return _arr;
    }
    function callTest04(int[] memory _arr) public view returns (int[] memory) {

        _arr[0] = 10;
        return _arr;
    }
    function mutatorTest01(uint[] memory _arr) public returns (uint[] memory) {
        _arr[0] = 20;
        return _arr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        _arr[0] = 20;
        return _arr;
    }
    function mutatorTest03(bytes memory _arr) public returns (bytes memory) {
        _arr[0] = 20;
        return _arr;
    }
    function mutatorTest04(int[] memory _arr) public returns (int[] memory) {
        _arr
