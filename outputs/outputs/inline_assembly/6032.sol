pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample7 {
    address public owner;
    uint256 public arrayLength;
    uint256[] internal array;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        arrayLength = array.length;
        for (uint256 i = 0; i < arrayLength; i++) {
            modifiedArray[i] = i;
        }
        array[i] = i;
    }
}




contract MutatedSemanticallyEquivalentAssemblyExample8 {
    address public owner;
    uint256 public arrayLength;
    uint256[] internal array;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        arrayLength = array.length;
        for (uint256 i = 0; i < arrayLength; i++) {
            array[i] = i;
        }
        for (uint256 i = arrayLength + 1; i < 3 * arrayLength; i++) {
            modifiedArray[i] = i;
        }
    }
}
