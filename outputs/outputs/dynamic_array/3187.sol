pragma solidity ^0.8.0;
contract AssignmentModulation2 {
    uint[][] a;
    uint[][][] b;
    function getArray1() public view returns (uint[][][] retVal) {
        return a;
    }
    function getArray2() public view returns (uint[][][] retVal) {
        return b;
    }
    function work() public view {
        uint [] memory list1;
        uint [] memory list2;
        for (uint i = 0; i < x1; i++){
            list1 = new uint[](x2);
            for (uint j = 0; j < x2; j++) {
                list1[j] = x1 + j;
            }
            b[i] = list1;
        }
    }
    function setReturn1(uint[][] ret1) public {
        a = ret1;
    }
    function setReturn2(uint[][][] ret2) public {
        b = ret2;
    }
}
contract AssignmentModulation3 {
    struct testStruct {
        uint8 test;
    }
    function getTest() public view returns (uint8) {
        return testStruct.test;
    }
    function setTest(uint8 testValue) public {
        testStruct.test = testValue;
    }
}
