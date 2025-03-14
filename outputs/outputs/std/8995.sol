pragma solidity ^0.8.0;
contract ExampleClass {
    uint[2] arrayTest1;
    uint arrayTest2;
    uint arrayTest3;
    uint[] arrayTest4 = new uint[](4);
    uint[] arrayTest5 = new uint[](5);
    constructor(uint arrSize1, uint arrSize2, uint arrSize3) {
        arrayTest1[0] = arrSize1; arrayTest1[1] = arrSize2;
        arrayTest2 = arrSize3;
    }
    function addArr(uint [3] memory arrs) public {
        pushArr(arrayTest1);
        arrayTest2 = uint(1);
        pushArr(arrayTest1);
        arrayTest2 += uint(10);
        arrayTest2 += uint(100);
        arrayTest2 += uint(1000);
        arrayTest2 -= uint(100);
        arrayTest2 -= uint(1000);

        arrayTest2 += uint(5);
        pushArr(arrayTest3);
        arrayTest2 *= uint(2);
        arrayTest2 /= uint(100);
        arrayTest2 -= uint(5);
        arrayTest2 >>= uint(5);
        arrayTest2 = uint(0);
        arrayTest2 |= uint(387);
        arrayTest2 &= uint(387);
        arrayTest2 <<= uint(5);

        arrayTest4[0] += int(1);
        arrayTest4[0] += int(1);
        arrayTest5[0] = uint(9);
        pushArr(arrayTest4);
        pushArr(arrayTest5);
    }
}
