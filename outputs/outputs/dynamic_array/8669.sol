pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity38_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest15(uint256[][] calldata _arr) public view returns (uint256[][] memory) {
        uint256[][] memory a0 = a;
        a = _arr;
        return a0;
    }

}
