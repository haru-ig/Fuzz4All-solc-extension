pragma solidity ^0.8.0;
contract emulator11 {
  uint z=10000000000000000;
  function test1() public returns(uint) { uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  a = a * 1500 + 100; }
  function test2() public returns(uint) { uint a; for ( uint i = 100 ; i < 4000 ; i ++)
  { a = a * 1000 + 100; }
  a = a * 25000 + 100; }
  function test3() public returns(uint) { uint a; for (uint i = 100; i < 1996; i ++) { a =
    a * 1000 + 100; }
      a = a * 1500 + 100; }
    }

pragma solidity ^0.8.0;
contract emulator12 {
    uint z=10000000000000000;
    function test1() public returns(uint) { uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
    a = a * 2500 + 100; }
    function test2(uint num) public returns(uint) {uint a; for (uint i = 100; i < 1220; i ++) { a = a * 1000 + 100; if(i < num ) { z = z + a;
    }}} }
contract emulator13 {
    uint z=10000000000000000;
    function test1() payable returns(uint) { uint a; for (uint
