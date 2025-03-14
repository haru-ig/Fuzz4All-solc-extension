pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256[] public elementsInitial;

    uint256 public elements;
    function removeFirst() public {
        elementsInitial.push(elements);
    }
}
