pragma solidity ^0.8.0;
contract Fallback {
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}


pragma solidity ^0.8.0;
contract Caller {
    function add(uint first, uint second) public pure returns (uint) {

        return first + second;
    }
    function subtract(uint second, uint first) public pure returns (uint) {

        return first - second;
    }
    function multiply(uint second, uint first) public pure returns (uint) {

        return first * second;
    }
    function div(uint second, uint first) public pure returns (uint) {

        return first / second;
    }

}
