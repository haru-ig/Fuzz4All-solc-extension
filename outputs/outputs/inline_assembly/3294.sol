pragma solidity ^0.8.0;
contract Mutate {
  uint public _firstOne = 10;
  uint public _secondOne = 20;

  mapping(uint => uint) public _valueMapping;
  mapping(uint => uint) public _uintMapping;

  function setFirstAndSecond(uint firstOne, uint secondOne) public {
    _firstOne = firstOne;
    _secondOne = secondOne;
    _valueMapping[10] = firstOne;
    _valueMapping[20] = secondOne;
    _uintMapping[firstOne] = secondOne;
    _uintMapping[secondOne] = firstOne;

    for(uint i=1; i<=_uintMapping.length; i++) {
      assert(i==_uintMapping[i]);
    }
  }
}
