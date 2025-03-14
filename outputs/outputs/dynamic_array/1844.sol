pragma solidity ^0.8.0;
contract DynamicNestedDynamicArraysExample {
    uint256[][][] fieldNestedDynamic1;
    bool boolArray;
    uint256 fieldNestedDynamic1ArrLength;
    uint256[][] fieldNestedDynamic2;
    function DynamicNestedDynamicArrays() public {
        fieldNestedDynamic1[0] = new uint256[](3);
        fieldNestedDynamic1[0][0] = 0;
        fieldNestedDynamic1[0][1] = 0;
        fieldNestedDynamic1[0][2] = 0;
        fieldNestedDynamic1[1] = new uint256[](3);
        fieldNestedDynamic1[1][0] = 0;
        fieldNestedDynamic1[1][1] = 0;
        fieldNestedDynamic1[1][2] = 0;
        fieldNestedDynamic1[2] = new uint256[][](1);
        fieldNestedDynamic1[2][0] = new uint256[](2);
        fieldNestedDynamic1[2][0][0] = 0;
        fieldNestedDynamic1[2][0][1] = 0;
        boolArray = true;
        fieldNestedDynamic1ArrLength = 1;
        fieldNestedDynamic2[0] = new uint256[](2);
        fieldNestedDynamic2[0][0] = 0;
        fieldNestedDynamic2[0][1] = 0;
    }
    function DynamicFunction() public {
        boolArray = false;
        fieldNestedDynamic2[1] = new uint256[](3);
        fieldNestedDynamic2[1][0] = 0;
        fieldNestedDynamic2[1][1] = 0;
        fieldNestedDynamic2[1][2] = 0;
        delete fieldNestedDynamic1[2];
        fieldNestedDynamic1[2] = new uint256[](3);
        fieldNestedDynamic1[2][
