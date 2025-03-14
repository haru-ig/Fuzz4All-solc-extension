pragma solidity ^0.8.0;
contract MutatedDynamicArrays20 {
    uint256[] public elementsInitial;
    function removeLast() public {
        elementsInitial.pop();
    }
}
