pragma solidity ^0.8.0;
contract F1 {
    uint16[1] constant x;
    function setX(uint16[1] memory x_) public {
        x = x_;
    }
}
contract F2 {
    function m() public {}
}
contract CalldataArrayTesting {
    function test() public {}
}
contract CalldataArrayTesting2 {
    function test() public {}
}
contract D {

    uint16[5] constant uintArray;

    uint8[3] constant bytesArray;

    mapping(uint16[2] => uint16) public intArray;
    mapping(uint16 => uint16) public mappingArray;


    uint16[10] dynamic array1;
    uint16[2, 3] dynamic array2;
    uint16[1][4] dynamic array3;

    function setDynamicArray1(uint16[10] memory d1_) public {
        array1 = d1_;
    }

    function setDynamicArray2(uint16[2, 3] memory d2_) public {
        array2 = d2_;
    }

    function setDynamicArray3(uint16[1][4] memory d3_) public {
        array3 = d3_;
    }
}
