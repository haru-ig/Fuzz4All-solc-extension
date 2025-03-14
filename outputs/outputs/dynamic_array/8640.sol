pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicArraysOfNonIdenticalType {
    uint256[uint256] public a;
    mapping (uint256 [] => uint256[]) public b;
    int256[uint256] public c;
    mapping (uint256 [] => int256[]) public d;
    function callTest01(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
    function callTest02(int256[] memory _arr) public view returns (int256[] memory) {
        return _arr;
    }
    function mutatorTest01(uint256[] memory _arr) public returns (uint256[] memory) {
        return _arr;
    }
    function mutatorTest02(int256[] memory _arr) public returns (int256[] memory) {
        return _arr;
    }
}
pragma solidity ^0.8.0;
