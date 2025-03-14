pragma solidity ^0.8.0;
contract emulator1 {
  uint z;
  uint x;
  mapping (address => uint) funds;
  function test1() public returns(uint) { for (uint i = 0; i < 100; i ++) { x = x + 1; funds[msg.sender] = funds[msg.sender] + 1; x = x - 1; funds[msg.sender] = funds[msg.sender] + 1; x = x - 1; } x = x - 1; funds[msg.sender] = funds[msg.sender] + 1; x = x - 1; funds[msg.sender] = funds[msg.sender] + 1; x = x - 1; } }
}


pragma solidity ^0.8.0;
contract emulator2 {
  uint x;
  uint y;
  function test2() public returns(bool) { x = 55; y = 0; for (uint i = 0; i < 5; i ++) { x = x + 1; y = y+ 1; } x = 0; y = 0; for (uint i = 0; i < 5; i ++) { x = x + 1; y = y* 5; } assert(x == 105 && y == 845); return true; }
}


pragma solidity ^0.8.2;
contract Test {
    uint z;
    function test1() public returns(uint) { z = z + 1; z = z + 1; z = z + 1; z = z + 1; }
    function test2() public returns(uint) { z = z + 10; z = z + 10; z = z + 10; z = z + 10; }
}
