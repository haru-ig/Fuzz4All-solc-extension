pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract FixedDynamicArray {
    constructor() public {
    }
    uint256 public arrayFixed;
    function FixedArray() public returns(uint256, uint) {
        arrayFixed = 12;
        return arrayFixed;
    }
    function FixedList() public returns(uint256, uint) {
        arrayFixed = 2;
        return (arrayFixed, 1024);
    }
}

pragma solidity ^0.8.0;
contract FixedDynamicNonFixedLengthArray {
    enum E {
        VAL1,VAL2,VAL3,VAL4,VAL5,VAL6,VAL7,VAL8,VAL9,VAL10,VAL11,VAL12,VAL13,VAL14,VAL15,VAL16,VAL17,VAL18,VAL19,VAL20,VAL21,VAL22,VAL23,VAL24,VAL25,VAL26,VAL27,VAL28,VAL29,VAL30,VAL31,VAL32,VAL33,VAL34,VAL35,VAL36,VAL37,VAL38,VAL39,VAL40,VAL41,VAL42,VAL43,VAL44,VAL45,VAL46,VAL47,VAL48,VAL49,VAL50,VAL51,VAL52,VAL53,VAL54,VAL55,VAL56,VAL57,VAL58,VAL59,VAL60,VAL61,VAL62,VAL63,VAL64,VAL65,VAL66,VAL67,VAL68,VAL69,VAL70,VAL71,VAL
