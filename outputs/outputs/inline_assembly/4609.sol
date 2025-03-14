pragma solidity ^0.8.0;
contract emulator6 {
  uint z;
  function test1() public returns(uint) { z = 10000000000000000; uint a; for (uint x = 100; x < 4000; x ++) { a = a * 1000 + a * 10 + 100; }  z = z * 1000 + a; }
  function test2() public returns(uint) {  uint a; for (uint x = 100; x < 4000; x ++) { a = a * 1000 + a * 10 + 100; }  z = z * 1000 + a; } }

pragma solidity ^0.8.0;
contract emulator5 {
  uint z;
  function test1() public returns(uint) { z = 10000000000000000; uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }  z = z * 1000 + a; return a; }
  function test2() public returns(uint) {  uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }  z = z * 1000 + a; return a; } }

pragma solidity ^0.8.0;
contract emulator4 {
    uint z;
    function test() public returns (uint) { z = 10000000000000000; uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }  z = a; }
    function test
