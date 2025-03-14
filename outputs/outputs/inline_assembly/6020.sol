pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample5 {
    address public owner;
    uint256[] internal array;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        uint256 arraySize = array.length;
        for (uint256 i = 0; i < arraySize; i++) {
            array[i] = i;
        }
        for (uint256 i = arraySize + 1; i < 3 * arraySize; i++) {
            modifiedArray[i] = i;
        }
    }
}
