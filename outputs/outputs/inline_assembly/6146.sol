pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample29 {
  struct Mutated{
      bool x;
      bool y;
      bool z;
      uint w;
  }
  function main() public pure{
      Mutated memory a;
      a.x=a.x;
      a.y=a.y;
      a.z=a.z;
      a.w=a.w;
      a.x=a.x;
      a.x=a.x;
      a.x=a.x;
      a.y=a.y;
      a.y=a.y;
      a.y=a.y;
      a.y=a.y;
      a.y=a.y;
      a.y=a.y;
      a.z=a.z;
      a.z=a.z;
      a.z=a.z;
      a.x=a.x;
      a.x=a.x;
      a.x=a.x;
  }
}
