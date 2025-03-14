pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicCalldataArrays {
    function mutatorTest01(uint[] memory _arr) public returns (uint[] memory) {
        _arr = [1];
        return _arr;
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        _arr = [address(1)];
        return _arr;
    }
    function mutatorTest03(bytes memory _arr) public returns (bytes memory) {
        _arr = "12".repeat(0);
        return _arr;
    }
    function mutatorTest04(int[] memory _arr) public returns (int[] memory) {
        _arr[0] = 1;
        return _arr;
    }
}
