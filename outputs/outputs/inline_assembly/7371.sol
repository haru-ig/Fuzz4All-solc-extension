pragma solidity ^0.8.0;
contract Equivalent_assembly_3 {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  uint constant constant4 = 13;
  constructor() {
    assembly {

      let A := constant1
      let B := constant2
      let C := constant3
      let D := constant4
    }
  }
}
