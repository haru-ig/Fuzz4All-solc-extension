pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicArraysMutation {
    uint256[] public a;
    uint256[] public c;
    uint256[] public d;
    int intA;
    int intB;
    function callTest01(uint256[] memory _arr, uint256[] memory _arr2) public view returns (uint256[] memory) {
        a = [a];
        return _arr2;
    }
    function callTest02(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
    function callTest03(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
    function callTest04(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
}
