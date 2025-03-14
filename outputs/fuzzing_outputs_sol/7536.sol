pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
    uint256 storedNumber;
    contract A {
        uint256 storedNumber;
        constructor(uint256 _val) { storedNumber = _val; }
        function setZ(uint256 _val) public { storedNumber = _val; }
    }
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;
    constructor(uint256 _val) {
        storedNumber = _val;
    }
    function setZ(uint256 _val) public {
        storedNumber = _val;
    }

    receive() external payable {
        storedNumber;
    }
}
