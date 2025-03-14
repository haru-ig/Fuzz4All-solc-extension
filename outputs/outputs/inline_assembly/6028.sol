pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample {
    address public owner;
    uint256[] internal array;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        uint256 _previousSize = array.length;
        for (uint256 i = 0; i < _previousSize; i++) {
            array[i] = i;
            modifiedArray[i] = i;
        }
    }
}
