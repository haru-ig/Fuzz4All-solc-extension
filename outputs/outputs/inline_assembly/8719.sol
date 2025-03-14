pragma solidity ^0.8.0;
contract Modul {
  mapping (address => uint) mapping (uint => uint);
  function AddMany() public {
    for (uint i=1;i<=10; i++){
      uint z = mapping(address => uint)[10];
      z[i] = i;
      mappings[address(this)][i] = 1;
    }
  }
  mapping (uint => mapping (uint => uint)) public mappings;
}
