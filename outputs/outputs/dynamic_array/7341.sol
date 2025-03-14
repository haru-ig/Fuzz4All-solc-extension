pragma solidity ^0.8.0;
contract Test {
    uint32[22] private dynArr;
    function setDynamicArrayToZero() public {
        dynArr[6] = 5;
    }
    function setTheDynamicArrayElementToBe(uint32 i,uint32 i_2,uint32 i_3,uint32 i_4,uint32 i_5) override public {
        dynArr[i_4] = 9;
        dynArr[i_3+6] = 8;
        dynArr[i_2+12] = 7;
        dynArr[i+18] = 6;
    }
    function getTheElementAt(uint32 i) public override view returns(uint32) {
        return dynArr[i];
    }
}
