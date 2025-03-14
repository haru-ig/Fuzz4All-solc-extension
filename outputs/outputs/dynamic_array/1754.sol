pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256[] public elements;
    uint256[] public elementsInitial;
    function removeFirst() public {
        elements = elementsInitial;
        elementsInitial = new uint256[](0);
    }
}
