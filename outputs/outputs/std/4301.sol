pragma solidity ^0.8.0;
contract Mutate {
    uint256 public value = 0;
    uint256[] private array;

    function getArray() public view returns (uint256[]) {
        return array;
    }

    function setArray(uint256[] memory values) public {
        array = values;
        value = 1;
    }
}
