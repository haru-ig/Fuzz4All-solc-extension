pragma solidity ^0.8.0;
contract New {
    function getValue(uint256 index) public returns (uint256) {
        return index < 4 || index > 5? 2 : 5;
    }
}
