pragma solidity ^0.8.0;
contract Test {
    uint256[] internal testArray;
    IERC20 internal testContract;
    uint256 internal testInt;
    function getTestContract() view external returns (IERC20 testContract);
    function setTestContract(IERC20 _newTestContract) public;
    function getTestArray() view internal returns (uint256[5] memory);
    function setTestArray(uint256[5] memory _newTestArray) public;
    function getTestInt() view internal returns (uint256 _newTestInt);
    function setTestInt(uint256 _newTestInt) public;
}
