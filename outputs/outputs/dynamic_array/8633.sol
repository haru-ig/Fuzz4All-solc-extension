pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicMutatorArrays {
    function callTest01(address _arr) public view returns (address) {
        return _arr;
    }
    function callTest02(bytes memory _arr) public view returns (bytes memory) {
        return _arr;
    }
    function mutatorTest01(uint256[] memory _arr) public returns (uint256[]) {
        return _arr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[]) {
        return _arr;
    }
    function mutatorTest03(int[] memory _arr) public returns (int[]) {
        return _arr;
    }
    function mutatorTest04(uint256 _arr) public returns (uint256) {
        return _arr;
    }
    function mutatorTest05(address _arr) public returns (address) {
        return _arr;
    }
    function mutatorTest06(bytes memory _arr) public returns (bytes memory) {
        return _arr;
    }
    function mutatorTest07(uint _arr) public returns (uint) {
        return _arr;
    }
}
