pragma solidity ^0.8.0;
contract Mod_132_bug {
  uint public result;
  function mod_132(uint a) public returns (uint) {
    uint res = uint(a);
    return (res / 1818181818);
  }
}
