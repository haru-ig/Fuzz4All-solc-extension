pragma solidity ^0.8.0;
contract Mutated {
    function add(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }
    function subtract(uint _a, uint _b) public pure returns (uint) {
        return _a - _b;
    }
    function multiply(uint _a, uint _b) public pure returns (uint) {
        return _a * _b;
    }
}

pragma solidity ^0.8.0;
contract Average {
    function getAverage(uint[] memory _data) public view returns (uint) {
        return Array.getAverage(_data);
    }
}
