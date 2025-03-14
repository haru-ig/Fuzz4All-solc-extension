pragma solidity ^0.8.0;
contract Compare{
  function test() public pure {
    address addr1=0xbc5f2e3a3f68d7396e5427b677b0f6004be20a0f;
    address addr2=0xbc5f2e3a3f68d7396e5427b677b0f6004be20a0f;
    bool result = addr1 < addr2;
 }
}
