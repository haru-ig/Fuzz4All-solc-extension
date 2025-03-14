pragma solidity ^0.8.0;
contract Example {
  string[] public strings;
  address[] public adresses;
  struct SimpleStruct {uint256 s1; uint256 s2;}
  SimpleStruct[] public structs;
  constructor() public {
    strings.push("Hi!");
    uint256[4] memory vals = [42, 234, 900, 3];
    for (uint256 i = 0; i < vals.length; i++) {
      adresses.push(address(this));
    }
    SimpleStruct memory vals1 = SimpleStruct(50, 45);
    for (uint256 i = 0; i < vals.length; i++) {
      structs.push(vals1);
    }
  }
}
