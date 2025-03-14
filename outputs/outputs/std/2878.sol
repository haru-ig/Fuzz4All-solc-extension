pragma solidity ^0.8.0;
contract EquivalentArithmetic10 {
    uint256 aValue;
    uint256 aValueWithOutAssignment;
    uint32 aValueWithOutAssignment32;
    uint8 aValueWithOutAssignment8;
    EquivalentArithmetic22 aValueWithDifferentValueType;
    mapping(uint256 => uint256) mappedElementToIndex;
    mapping(uint32 => uint32) mappedElementToIndex32;
    mapping(uint8 => uint8) aValueWithOutAssignment8Mapping;
    mapping(EquivalentArithmetic22 => uint256) aValueWithMultipleValues;
    EquivalentArithmetic18 x;
    EquivalentArithmetic19 y;
    fallback() external payable {}
    constructor() {
        aValue = 1;
        aValueWithOutAssignment = 10;
        aValueWithOutAssignment32 = 10;
        aValueWithOutAssignment8 = 1;
        aValueWithDifferentValueType = EquivalentArithmetic9.EquivalentArithmetic22.EquivalentArithmetic9;
        if (aValue == 2) {
            aValueWithOutAssignment = 2;
            aValueWithOutAssignment32 = 2;
            aValueWithOutAssignment8 = 2;
        }
        if (aValue == 2 && aValueWithOutAssignment4!= 41) {
            aValueWithOutAssignment = 5;
            aValueWithOutAssignment32 = 3;
            if (aValue8!= 35) {
                aValueWithOutAssignment8 = 2;
            }
        }
        if (aValue == 2 + 34) {
            x = new EquivalentArithmetic18(5);
        }
        if (aValue == 22) {
            x.aValue = 5;
        }
        if (aValue == aValueWithDifferentValueType) {
            x.aValue = x.aValue + aValueWithDifferentValueType;
        }
        if (aValue == aValueWithOutAssignment) {
            x.aValue = x.aValue + aValueWithOutAssignment;
        }
        if (aValue == aValueWithOutAssignment32) {
            x.aValue = x.aValue + aValueWithOutAssignment32;
        }
        if (aValue == aValueWithOutAssignment8) {
            x.aValue = x.aValue + aValueWithOutAssignment8;
        }
        if (aValue == x.aValue) {
            x = new EquivalentArithmetic18(5);
        }
        if (aValue + uint(aValueWithMultipleValues.EquivalentArithmetic0) > 9) {
            x.aValue = 5;
        }
        if (((mapping(uint32, uint32) (mapping(uint8, uint) (mapping(EquivalentArithmetic22, uint256) (mapping(uint32, mapping(uint32, uint32) (mapping(uint8, uint8) (mapping(EquivalentArithmetic2
