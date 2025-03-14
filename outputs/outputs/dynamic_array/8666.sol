pragma solidity ^0.8.0;


contract SemanticallyEquivalentSolidity25_callDataArrays {
    string[] public s;
    string public s2;
    bytes public a;
    function callTest01(bytes32[] calldata _arr) public view returns (bytes32[] memory) {
        return _arr;
    }
    function callTest02(string[] calldata _arr) public view returns (string[] memory) {
        return _arr;
    }
    function callTest03(uint256[][][][] calldata _arr) public view returns (uint256[][][][] memory) {
        return _arr;
    }
}


contract SemanticallyEquivalentSolidity24_callDataArrays {
    bytes public d;
}
