pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample6 {
    uint[] internal array;
    uint[] internal modifiedArray;
    function main() public {
        uint[] memory array = new uint[](3);
        array[0] = 1;
        array[1] = 2;
        array[2] = 3;
        uint[] memory modifiedArray = new uint[](3);
        modifiedArray[0] = 4;
        modifiedArray[1] = 5;
        modifiedArray[2] = 6;
        array.length = 4;
        modifiedArray.length = 3;
    }
}
