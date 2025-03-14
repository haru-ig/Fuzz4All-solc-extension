pragma solidity ^0.8.0;
contract Mutator
{
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
