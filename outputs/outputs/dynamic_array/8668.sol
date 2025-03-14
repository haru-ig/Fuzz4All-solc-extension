pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest09(uint256[][] calldata _arr) external view returns (uint256[][] memory);
}
contract SemanticallyEquivalentSolidity26_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest10(uint32[] calldata _arr) external view returns (uint32[] memory);
}
contract SemanticallyEquivalentSolidity26_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest11(int256[] calldata _arr) external pure returns (uint256[][] memory);
}
contract SemanticallyEquivalentSolidity26_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest12(int128[] calldata _arr) external pure returns (uint256[][] memory);
}
contract SemanticallyEquivalentSolidity26_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest13(uint128[] calldata _arr) external pure returns (uint256[][] memory);
}
contract SemanticallyEquivalentSolidity26_callDataArrays {
    string public s;
    string[] public sa;
    bool public boolA;
    uint256[] public uintA;
    uint256[][] public a;
    function callTest14(uint256[2][] calldata _arr) external pure returns (uint256[][] memory);
}
contract SemanticallyEquivalentSolidity26_call
