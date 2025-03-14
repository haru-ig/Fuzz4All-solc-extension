pragma solidity ^0.8.0;
contract AbiEncoding {
    struct A {bytes8 testBytes;}
    struct B {A testA;}
    struct C {bytes1 testBytes; B testB;}
    struct D {C testC;}
}
contract AbiReencoding {
    struct A {bytes8 testBytes;}
    struct B {A testA; B testB;}
    struct C {B testB; A testA;}
    struct D {C testC; B testB;}
}
