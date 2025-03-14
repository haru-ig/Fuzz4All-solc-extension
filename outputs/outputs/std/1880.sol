pragma solidity ^0.8.0;

contract ArrayTestInterface {




    uint256 initialLength;
    uint256[] memory array;


    constructor(uint256 length) {
        initialLength = length;
        array = new uint256[](length);
    }
function count() public view returns (uint256);
function contains(uint256 myInteger) public view returns (bool);
}
contract NonMutatedArrayTestInterface {



    uint256 initialLength;
    uint256[] memory array;




constructor(uint256 length) internal {
    initialLength = length;
    array = new uint256[](length);
}
    uint256 count() public view {
        for (uint256 i = 0; i < initialLength ; i++) {
            uint256 sumOfArrayElements = 0;
            for (uint256 j = 0; j <= i; j++) {
                sumOfArrayElements += array[j];
            }
            uint256 sumOfArrayElementsDiffersFromInitialLengthOnOtherElements = countDifferentElements(array);

            if (sumOfArrayElements == sumOfArrayElementsOnInitialLength && sumOfArrayElementsDiffersFromInitialLengthOnOtherElements == 0) {
                break;
            }
        }
    }

    bool contains(uint256 myInteger) public view {
        uint256 numberToSearch = 0;
        bool existsOnArray = false;
        for (uint256 i = 0; i < initialLength ; i++) {
            if (myInteger == array[i]) {
                existsOnArray = true;
            }

            numberToSearch += array[i];

            if (numberToSearch == myInteger) {
                existsOnArray = true;
            }

            if (numberToSearch > myInteger) {
                break;
            }
        }
        if (existsOnArray) {
            return true;
        }
        if (!existsOnArray) {
            return false;
        }
    }
function countDifferentElements(uint256[] memory otherElements) public view returns (uint256) {
uint256 countOfDifferentElements = 0;
for(uint256 i = 0; i < initialLength; i++) {
if(otherElements[i]!= array[i]) {
countOfDifferent
