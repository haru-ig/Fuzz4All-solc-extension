pragma solidity ^0.8.0;
contract Caller {
  function pay(uint x, uint y) public payable returns (uint) {
    return (x * y);
  }
}
contract ContractCall {
  uint8 a;
  uint256 b;
  constructor() { a = a - 3; b = 10; }
  function get() public view returns (uint256, uint8) { return (a, a + b); }
}
contract Bad {
  uint8 a;
  uint _val1;
  uint _val2;
  uint _val3;
  uint _val4;
  uint _val5;
  uint _val6;
  uint _val7;
  uint _val8;
  uint _val9;
  uint _val10;
  uint _val11;
  uint _val12;
  uint _val13;
  uint _val14;
  uint _val15;
  constructor() { a = a - 3; b = 10; }
  function get() public view returns (uint256, uint8) { return (a, a + b); }
  function pay(uint x, uint y) public payable { _val1 = 0xfefe; _val2 = 0; _val3 = 0x20fe; _val4 = 0x20fe + 10; _val5 = 0xfefe + 10; _val6 = 0xfefe + 0x20fe; _val7 = 0x12345678; _val8 = 0x21212121 + 88888888; _val9 = 199819; _val10 = 0x20fe + 0x20fe + 0x20fe; _val11 = 0x20fe + 0x20fe + 888888; _val12 = 0xfefe + 0xfefe + 88888888; _val13 = 0x
