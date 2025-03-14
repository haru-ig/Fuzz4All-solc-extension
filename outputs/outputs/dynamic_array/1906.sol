pragma solidity ^0.8.0;
contract MutateSemanticallyEquivelantArrayOfBytes {
    uint[] public fieldByteArray;
    constructor() public {
    fieldByteArray = new uint[](3);
    fieldByteArray[0] = 1;
    fieldByteArray[1] = 0;
    fieldByteArray[2] = 2;
    }
    function updateSemanticallyEquivelantArrayOfBytes() public returns(uint[]) {
        fieldByteArray[2] = 3;
        return fieldByteArray;
    }
}
