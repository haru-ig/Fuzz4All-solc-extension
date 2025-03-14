pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    bytes256[] public elementsInitial;
    function removeLast() public {
        delete elementsInitial[0];
    }
}
