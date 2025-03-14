pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample6 {
    address public owner;
    uint[56] internal array;
    uint[60] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        uint arraySize = array.length;
        for (uint256 i = 0; i < arraySize; i++) {
            array[i] = i;
        }
        for (uint256 i = arraySize + 1; i < 3 * arraySize; i++) {
            modifiedArray[i] = i;
        }
    }
}
