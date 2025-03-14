pragma solidity ^0.8.0;
contract Mutability {
   uint private constant ZERO = 0;
   uint public value;
   constructor () {
     value = ZERO;
   }

   modifier onlyValueLessThanTen(uint _value) { if (_value < 100) revert(); _; }

   function setValue (uint _value) onlyValueLessThanTen public {
     value = _value;
   }
}
pragma solidity 0.8.0;
contract Mutability {
  uint public constant ZERO = 0;
  uint public value;
  constructor () {
    value = ZERO;
  }

  modifier onlyValueLessThanTen(uint _value) { if (_value < 100) revert(); _; }

  modifier setValue (uint _value) {

    if (_value < 100) revert();
    value = _value;
  }
}
