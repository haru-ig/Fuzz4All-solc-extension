pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity106_arrays1 {

  struct InnerStruct{
    uint x;
    uint y;
  }
  struct Struct{
    InnerStruct a;
  }
  struct Struct2{
    uint[] arr;
  }
}
