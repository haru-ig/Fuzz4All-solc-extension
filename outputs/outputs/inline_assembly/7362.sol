pragma solidity ^0.8.0;
contract Equivalent_assembly {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  uint constant constant4 = 13;
  function EquivalentModification() public {
    assembly {
      constant1 += 1
      constant3 += 1
      constant3 -= 1
      constant4 -= 1
    }
    require(constant1 >= constant2, 'Failed');
    require(constant1 >= Equivalent_assembly.constant3, 'Failed');
    require(constant1 >= Equivalent_assembly.constant4, 'Failed');
  }
}
