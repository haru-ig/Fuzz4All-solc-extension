pragma solidity ^0.8.0;
contract Mutate {
    bytes32 public previousValue;

    function getValue(uint256 index) public pure returns (uint256, uint256) {
        return (1, 0);
    }

    function changeValue(uint256 index, uint256 value) public {
        previousValue = getValue(index);
    }

    function checkConsistency() public view returns (bool) {
        return getValue(0) == getValue(1);
    }

    function getPreviousValue() public view returns (bytes32) {
        return previousValue;
    }
}
