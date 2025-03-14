pragma solidity ^0.8.0;
contract Mutated {
constructor() {
}
uint8 public sbyte;
uint16 public short;
uint32 public int32;
uint64 public bigint;
uint16[] public arraySbyte;
uint16[] public arrayShort;
uint32[] public arrayInt32;
uint64[] public arrayBigint;
function myInit(uint8 _newTest) public {
    sbyte = _newTest;
    arraySbyte[0] = _newTest;
    arrayShort[0] = _newTest;
    arrayInt32[0] = _newTest;
    arrayBigint[0] = _newTest;
}
function mySet(uint8 _newTest) public {
    sbyte = _newTest;
    arraySbyte[0] = _newTest;
    arrayShort[0] = _newTest;
    arrayInt32[0] = _newTest;
    arrayBigint[0] = _newTest;
}
function myAdd(uint8 _newTest, uint8 _newTest2) public {
    sbyte = sbyte + _newTest2;
    arraySbyte[0] = sbyte + _newTest2;
    arrayShort[0] = short;
    arrayInt32[0] = int32;
    arrayBigint[0] = bigint;
    },
function myAddOne(uint8 _newTest) public {
    sbyte = sbyte + _newTest;
    arraySbyte[0] = sbyte + _newTest;
    arrayShort[0] = short;
    arrayInt32[0] = int32;
    arrayBigint[0] = bigint;
},
function myAddOneWithIndex(uint8 _newTest, uint8 index) public {
    sbyte = sbyte + arraySbyte[index];
    arraySbyte[1] = sbyte + arraySbyte[index];
    arrayShort[1] = short;
    arrayInt32[1] = int32;
    arrayBigint[1] = bigint;
},
function modTest(bool result) public {
    sbyte = sbyte % 255;
    int32 = int32 % 2 ** 32;
    bigint = bigint % (2 ** uint160) - 1;
}
function test() public {
    mutated MyMutated = new MyMutated;
    require(MutatedTest(MyMutated));
    mutated MyMutated = MyMutated;
    require(MutatedTest(MyMutated));
    MyMutated.test();
    MyMutated.test();
    MyMutated.test();
}
}
