pragma solidity ^0.8.0;
contract Emulator3 {
  function test() public returns(uint) {
    Emulator2 instance = new Emulator2();
    return instance.test();
  }
}
