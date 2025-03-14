pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample29 {
  struct Mutated {
      uint w;
      uint _x;
  }
  function main() public pure{
    Mutated memory x;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;
    x.w=x.w*2;

    x.x=7;
    uint foo=[0,1,2,3,4,5,6]();
    for(uint i=0; 2 ** i < 100; i++){
      x._x=_x+foo[i];
    }

    x.w=7;
  }
}
