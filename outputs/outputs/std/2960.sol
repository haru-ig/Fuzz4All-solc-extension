pragma solidity ^0.8.0;
contract Arithmetic {
    uint x;
    function add(uint x) public pure returns (uint addValue) {
        addValue = x;
    }
    function subtract(uint y) public pure returns (uint subtractValue) {
        subtractValue = x - y;
    }
    function multiply(uint x) public pure returns (uint mulValue) {
        mulValue = x * x;
    }
    function divide(uint y) public pure returns (uint divValue) {
        divValue = x / y;
    }
}
