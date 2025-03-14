pragma solidity ^0.8.0;
contract New {
    function getValue(uint32 index) public pure returns (uint32) {
        return index < 2? 1 : 2;
    }
}
