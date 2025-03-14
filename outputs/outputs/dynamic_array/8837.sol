pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity_pointers9 {

  struct InnerStruct {
    address[] arr1;
    uint[]  arr2;
  }

  struct ArrayOfStructs {
    byte[]  data;
    bytes16 name;
    InnerStruct[] struc;
    InnerStruct[] strucs;
    InnerStruct[] strucx;
  }

  ArrayOfStructs[] public data;
  ArrayOfStructs[] public datac;
  ArrayOfStructs[] public datam;
}
