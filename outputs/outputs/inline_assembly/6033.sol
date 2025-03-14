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
            array[i] = i;
        }
        new_array = modifiedArray;
        modifiedArray = array;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    address public owner;
    uint256 public arrayLength;
    uint256[] internal array;
    uint256[] internal newArray;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        arrayLength = array.length;
        for (uint256 i = 0; i < arrayLength; i++) {
            array[i] = i;
        }
        new_array = modifiedArray;
        modifiedArray = array;
    }
}
