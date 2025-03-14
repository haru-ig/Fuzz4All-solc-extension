pragma solidity ^0.8.0;
contract Mutated {
  constructor() { }

  function changeValues(uint s1, uint s2, uint s3, uint s4, uint s5,, uint s7, uint s8,uint c, uint[] memory s9) public {

    _contractValue = _contractValue - s1*2 -s2*2 -s3*2 -s4*2 - s1 - s2 - s3 - s4 -s5 - s6 - s7 - s8 - c - s9[0] ;
    _arrayValue = _arrayValue - s1*2 -s2*2 -s3*2 -s4*2 - s1 - s2 - s3 - s4 -s5 - s6 - s7 - s8 - c - s9[0];
    _arrayValue2 = _arrayValue2 -s1*2 -s2*2 -s3*2 -s4*2 - s1 - s2 - s3 - s4 -s5 - s6 - s7 - s8 - c - s9[0];
    _arrayValue3 = _arrayValue3 -s1*2 -s2*2 -s3*2
