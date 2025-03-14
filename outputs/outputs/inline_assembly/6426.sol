pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample39 {
    struct A{
        uint f1;
        uint f2;
        uint f3;
        uint f4;
    }
    A a;
    constructor() public {

        a = A(uint[](1, 2));
    }
}
contract MixedContactsExample39 {
    struct MyStruct{
        uint x;
        uint y;
        uint z;
    }
    struct A{
        uint f1;
        MyStruct s;
    }
    A a;
    A aCopy;
    function setF1(uint h) public {
        aCopy.f1 = h;
    }
    function getF2() public returns (A) {
        return aCopy;
    }
    function getF1() public returns (A) {
        return a;
    }
}
contract MixedContactsExample39 {
    struct A{
        uint x;
        uint y;
        uint z;
    }
    struct B{
        uint y;
        uint z;
    }
    A a;
    B b;
    B bCopy;
    function setFBZ(uint p_0, uint p_1) public {
        a.x = p_0;
        b.y = p_1;
    }
    function getFBCY() public returns (A) {
        return A(uint(b.y), uint(b.z));
    }
    function getFACX() public returns (B) {
        return B(uint(a.x), uint(b.z));
    }
}
contract MixedContactsExample39 {
    struct MyStruct{
        uint x;
        uint y;
        uint z;
    }
    struct A{
        uint x;
        MyStruct s;
    }
    struct B{
        uint y;
        MyStruct w;
    }
    A a;
    B b;
    B bCopy;
    function setABW(uint p_0, uint p_1) public {
        a.x = p_0;
        b.y = p_1;
    }
    function getABW() public returns (A) {
        return A(uint(a.x), MyStruct(uint(a.x), uint(a.x), uint(a.x)));
    }
    function getABy() public returns (B) {
        return B(uint(a.x), MyStruct(uint(a.x), uint(a.x), uint(a.x)));
    }
}
contract MixedContactsExample39 {
    struct A{
        uint x;
        uint y;
    }
    struct B{
