pragma solidity ^0.8.0;
contract emulator11 {
  uint z_init = 1;
  uint z = gasleft() + 1;
  function test1() public returns(uint) { for (uint i = 0; i < 10000000; i ++) { gas = gasleft() + 1; z = 3 * z; } z = z_init; }
  function test2() public returns(uint) { uint i; z = 0;
  for (i = 0; i < 10000; i ++) { z = 3 * z; } z = z_init; } }
pragma solidity 0.8.0;

pragma experimental ABIEncoderV2;
contract emulator {
    function test() public payable {
    uint amount = msg.value;
    (memory, address codeAddress, address callingAddress, uint[] memory) memoryData = address(this).delegatecall(abi.encodeWithSignature("test2()")).returnData();
     (uint x, uint y) = bytes(memoryData.memory).decode( (uint,uint) );
     assert( amount == x + y );
    } }
    function test3() public payable returns(uint) {
    uint amount = msg.value;
    (uint x, uint y) = address(this).delegatecall(abi.encodeWithSignature("test3()")).returnData();
     assert( amount == x + y );
     return y + x;
    function test4() public returns(uint) {
    uint amount = msg.value;
    (uint x, uint y) = address(this).delegatecall(abi.encodeWithSignature("test4()")).returnData();
     uint x2 = x + y;
     return x2;
    modifier testModifier(){
     uint amount = msg.value;
     (uint x, uint y) = address(this).delegatecall(abi.encodeWithSignature("test1()")).returnData();
      assert( amount == x + y);
     _;}
    modifier testModifier2(){
     uint x2 = test1();
      uint amount = msg.value;
     _;}
}
