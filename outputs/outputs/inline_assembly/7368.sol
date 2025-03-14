pragma solidity ^0.8.0;
contract Equivalent_assembly_2 {
  Equivalent_assembly public easm;

  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  uint constant constant4 = 13;

  constructor() {
    easm = new Equivalent_assembly();
    easm.modify();
    easm = new Equivalent_assembly();
  }

  modifier modifiable(){
    easm.modify();
    _
  }







  function emitModified() public modifiable returns(uint) {
    return constant1 + constant2 + constant3 + constant4;
  }


  function getConstantValue() public view returns(uint) {
    return constant1 + constant2 + constant3 + constant4;
  }
}
