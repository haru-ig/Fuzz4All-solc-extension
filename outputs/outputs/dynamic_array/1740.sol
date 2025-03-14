pragma solidity ^0.8.0;
contract MutatedDynamicArrays20
{
    uint256 constant maxElements = 256;
    uint256[] elements;
    function add() public {
        elements.push(0);
    }
}
