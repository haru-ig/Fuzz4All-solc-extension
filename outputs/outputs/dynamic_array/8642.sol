pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicArrayOfDifferentType {
    uint256[] public a1;
    bytes32[] public a2;
    bytes32[] public a3;
    function callTest01(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
    function callTest02(bytes32[] memory _arr) public view returns (bytes32[] memory) {
        return _arr;
    }
    function mutatorTest01(uint256[] _arr) public returns (uint256[] memory) {
        return _arr;
    }
    function mutatorTest02(bytes32[] memory _arr) public returns (bytes32[] memory) {
        return _arr;
    }
}
