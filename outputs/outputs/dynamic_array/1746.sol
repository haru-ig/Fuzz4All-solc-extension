pragma solidity ^0.8.0;
contract MutatedDynamicArrays21 {
    uint256[] public elementsInitial;

    function removeLast() public {
        require(elementsInitial.length == 20);
        elementsInitial.pop();
    }
    function addElements(uint256[] memory elements) public {
        elementsInitial = elements;
        elementsInitial.push(1);
    }
}
