pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample {
    address public owner;
    uint256[] internal array;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
    }
    function mutateArray() public {
       arraySize = array.length;
       for (uint256 i = arraySize-1; i > 0; i--) {
           array[i] = array[i-1];
       }
    }
    function returnToArray() public view returns (uint256[] memory) {
        return array;
    }
    function modifyArray() public {
           arraySize = modifiedArray.length;
           for (uint256 i = 1; i < arraySize; i++) {
                modifiedArray[i] = array[i];
           }
    }
    function returnToModifiedArray() public view returns (uint256) {
        return modifiedArray;
    }
}
