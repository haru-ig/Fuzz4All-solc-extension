pragma solidity ^0.8.0;
contract test7
{
    function test() public returns (uint) {

        test6 storage myStruct = testFactory(_2a);
        bool myBool;
        uint myNum;
        uint myArrayLen;
        uint[] memory myArrayU64;
        s2[] memory myArray2;
        s2[] memory myArrayS2;

        s2 myArrayS2_temp;

        uint myArrayS2_temp2;

        uint myArrayS2_value;
        uint[] memory myArrayS2_indexBuf;
        s2[] memory myArrayS2_index;
        s2[] memory myArrayS2_storage;
        s2[] memory myArrayS2_storage2;

        uint myArrayS2_storage2_value;
        test6[] memory myArrayS5;
        test6 memory myStruct;

        test6[][] memory myArrayS22;
        test6[] internal emptyArray = [];
        test6[][] internal  multiDimArray = [];
        return myBool? 23 : 28;
    }

    function _2a() public returns (test6 storage) {
        return test6(0x2A);
    }
}
