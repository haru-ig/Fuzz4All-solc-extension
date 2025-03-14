pragma solidity ^0.8.0;
contract Example8Old {
    uint internal constant a = 5;
    uint internal constant b = 4;
    function _fallback(uint _value, bytes memory _data) public payable {}
    function add() public pure returns (uint, uint) {
        return (a + b, b + 1);
    }
    function subtract() public pure returns (uint, uint) {
        return (a - b, a + 1);
    }
}
