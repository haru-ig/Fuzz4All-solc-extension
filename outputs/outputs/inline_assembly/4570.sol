pragma solidity ^0.8.0;
contract emulator4 {
  uint z;
  function test() public returns(uint) { uint x=2; uint temp1=x; x=2; temp1 = temp1 + 1; x=2; temp1 = temp1 + 1; x=2; temp1 = temp1 + 1; x=2; temp1 = temp1 + 1; x=2; temp1 = temp1 + 1; x=2; temp1 = temp1 + 1; return 1000000000000; }
}


contract emulator5 {
  uint x;
  uint y;
  uint z;
  uint temp1;
  uint temp2;
  uint temp3;
  uint temp4;
  uint data;

  function test1() public {
    x = 100;
    temp1 = x;
    y = 200;
    temp2 = y;
    z = temp1 + temp2;
    data= z;
    x = x + y;
    data = data + x;
    x = x + y;
    data = data + x;
    x = x + y;
    data = data + x;
  }

  function test4Function(uint number) public returns (uint) {
    if (number == 1) return 25;
    else return 45;
  }
}

contract Example {
  function run() public {
    uint z;
    emit logx("in1");
    for (uint i = 0; i < 100; i++) {
      for (uint j = 0; j < 100; j++) {
        z = z + 1;
      }
    }
    emit logx("in5");
    uint x1 = 2;
    uint temp1 = x1;
    x1 = 2;
    temp1 = temp1 + 1;
    x1 = 2;
    temp1 = temp1 + 1;
    x1 = 2;
    temp1 = temp1 + 1;
    x1 = 2;
    temp1 = temp1 + 1;
    x1 = 2;
    temp1
