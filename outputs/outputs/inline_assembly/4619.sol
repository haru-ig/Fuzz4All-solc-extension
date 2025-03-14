pragma solidity ^0.8.0;
contract emulator4 {
  uint z = 10000000000000000;
  function mutated1() public returns(uint) { for (uint i = 100; i < 200; i ++) { z *= 1000 + 100; }
  z = z * 1000 + 500; }
  function mutated2() public returns(uint) { for (uint i = 100; i < 200; i ++) { z *= 1000 + 100; }
  z = z * 1000 + 500; } }

pragma solidity ^0.8.0;
contract emulator5 {
  uint z = 10000000000000000;
  function mutated3() public returns(uint) { uint a; for (uint i = 100; i < 200; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; }
  function mutated4() public returns(uint) { uint a; for (uint i = 100; i < 200; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; } }

pragma solidity ^0.8.0;
contract emulator6 {
  uint return1(uint a, uint b) public returns(uint, uint) {
    return (a * 2, a + b * 1000); }
  uint
