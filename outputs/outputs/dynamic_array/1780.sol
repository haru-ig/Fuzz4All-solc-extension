pragma solidity ^0.8.0;
contract OverridingChangeNestedMutability {
    uint256[] private nestedNonFixedArray;
    uint256[] private nestedNonFixedArrayAndInit;
    uint256[][] private nestedFixedArray;
    uint256[][] private nestedFixedArrayAndInit;
    constructor() public {
        nestedFixedArray = new uint256[][](2);
        nestedFixedArrayWithInit = new uint256[][][](2);
        for (uint i = 0; i < nestedFixedArray.length; i++) {
            nestedFixedArray[i] = new uint256[](1);
            nestedFixedArray[i][0] = 0;
        }
        nestedFixedArrayWithInit[0] = new uint256[][][](3);
        for (uint j = 0; j < nestedFixedArrayWithInit.length; j++) {
            for (uint k = 0; k < nestedFixedArrayWithInit[j].length; k++) {
                nestedFixedArrayWithInit[j][k] = new uint256[](1);
                nestedFixedArrayWithInit[j][k][0] = 0;
            }
        }
    }
    function nestedAddOneWithoutInitAndNoCopy() public {
        nestedNonFixedArray[0
