pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicArraysOfDifferentType {
    uint256[] public a;
    address[] public b;
    function callTest01(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
    function callTest02(address[] memory _arr) public view returns (address[] memory) {
        return _arr;
    }
    function mutatorTest01(uint256[] memory _arr) public returns (uint256[] memory) {
        return _arr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        return _arr;
    }
}
