pragma solidity ^0.8.0;
struct MyStruct { address addr; string str; uint u; }
contract Test {
    mapping(uint => MyStruct[]) structsA;
    mapping(uint => bytes2[]) structsB;
    mapping(uint => address[]) arraysA;
    mapping(uint => bytes2[]) arraysB;
    function test() public {
        MyStruct[] memory memory3;
        (uint x, uint y) = memory3;
        MyStruct[] memory memory4[] = memory3;
        uint[] memory memory5 = memory3;
        address[] memory arrays6;
        MyStruct memory memory7(0, string('abc'), 1);
        structsA[address(0)][] memory a;
        structsB[address(0)][] memory b;
        arraysA[uint(0)][0][] memory c;
        arraysB[uint(0)][0][] memory d;
    }
}
