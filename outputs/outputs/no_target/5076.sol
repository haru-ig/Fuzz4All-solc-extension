pragma solidity ^0.8.0;
contract C40_bug85355009385 {
  uint88 a = -0x95;
  bytes32 b = 0x48FF5BE6F6A86E94D5A508F91515EACEA90AAF47;
  uint160 c = 0xB83348DBCB7C961A;
  function set() public { a = -0x21; b = a; uint88 d = uint88(uint160(uint8(uint8(a)))); uint160 e; e = uint160(uint8(uint8(b))); c = uint160(uint8(uint8(a))); }
}
