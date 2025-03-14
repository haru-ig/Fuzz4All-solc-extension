pragma solidity ^0.8.0;
contract MutatedDynamicArrays20 {
    address[] public elementsInitial;
    function removeLast() public {
        elementsInitial.pop();
    }
}
