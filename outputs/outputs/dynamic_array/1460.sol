pragma solidity ^0.8.0;

contract MutatedSemanticsEquivalentMutatedDynamicArrayTypeCheck22 {
    uint256[2][3][4][][][] modifiedArray3;
    uint16[] public originalArray1;

    function MutatedFunction() public {
        for (uint i = 0; i < 10; i++) {
            originalArray1.push(uint16(0x13D4C));
            modifiedArray3.push(new uint256[2][3][4][][](i));
        }
        for (uint i = 1; i < 10; i++) {
            originalArray1.push(uint16(015A));
            modifiedArray3[0]:[2][3][4][][][] memory array1Copy = modifiedArray3;


            modifiedArray3[1]:[2][3][4][][][] memory array3Copy = modifiedArray3;
        }
    }
}
