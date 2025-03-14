pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_dynamicArraysofSameType {
    uint[] public a;
    address[] public b;
    uint64[1] public c;
    function callTest01(uint[] memory _arr) public view returns (uint[] memory) {
        return _arr;
    }
    function callTest02(address[] memory _arr) public view returns (address[] memory) {
        return _arr;
    }
    function callTest03(uint64[1] memory _arr) public view returns (uint64[1] memory) {
        return _arr;
    }
    function mutatorTest01(uint[] memory _arr) public returns (uint[] memory) {
        return _arr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        return _arr;
    }
    function mutatorTest03(uint64[1] memory _arr) public returns (uint64[1] memory) {
        return _arr;
    }
}
