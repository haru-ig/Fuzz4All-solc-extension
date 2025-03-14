pragma solidity ^0.8.0;
contract Test {
  uint8 constant constant1;
  uint256 constant constant2;
  uint256 constant constant2Mod;
  uint256 constant constant2ModMod;
}

pragma solidity 0.8.0;
contract Test {
  uint8 constant constant1;
  mapping(uint256 => uint256) public arrayVar;
  uint256 constant constant2;
  uint256 constant constant2Mod;
  uint256 constant constant2ModMod;
}

pragma solidity ^0.7.6;
contract Test {
  uint8 constant constant1;
  mapping (uint => uint) public arrayVar;
  uint constant constant2;
  uint constant constant2Mod;
  uint constant constant2ModMod;
}
