pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicCalldataArrays2 {
    function mutatorTest01(uint[] memory _arr) public returns (uint[] memory) {
        uint _len1 = 100;
        uint len2 = _arr.length;
        return new uint[](_len1 + len2);
    }
    function mutatorTest02(address[] memory _arr) public returns (address[] memory) {
        address _len1 = 100;
        address len2 = _arr.length;
        return new address[](_len1 + len2);
    }
    function mutatorTest03(bytes memory _arr) public returns (bytes memory) {
        bytes _len1 = 100;
        bytes len2 = _arr.length;
        return new bytes[](_len1 + len2);
    }
    function mutatorTest04(int[] memory _arr) public returns (int[] memory) {
        int _len1 = 100;
        int len2 = _arr.length;
        return new int[](_len1 + len2);
    }
}
