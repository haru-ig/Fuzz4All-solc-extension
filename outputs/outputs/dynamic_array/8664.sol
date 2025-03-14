pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest09(uint256[][] calldata _arr) public view returns (uint256[][] memory) {
        return _arr;
    }
    function callTest10(uint32[] calldata _arr) public view returns (uint32[] memory) {
        return _arr;
    }
}
