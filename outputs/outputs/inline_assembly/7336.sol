pragma solidity ^0.8.0;
contract Mutate1 {
  Semantics_inline2 instance1;
  Semantics_inline3 instance2;
  Semantics_inline3 instance3;
  Semantics_inline3 instance4;
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  uint constant constant4 = 13;
  uint constant constant5 = 14;
  uint constant constant6 = 15;
  uint constant constant7 = 16;
  uint constant constant8 = 17;
  uint constant constant9 = 18;
  uint constant constant10 = 19;
  uint constant constant11 = 20;
  uint constant constant12 = 21;
  uint constant constant13 = 22;
  uint constant constant14 = 23;
  constructor() {
    instance1 = new Semantics_inline2();
    instance2 = new Semantics_inline3();
    instance3 = new Semantics_inline3();
    instance4 = new Semantics_inline3();
  }
  function add1() external {
    uint variable1 = instance1.constant1 + instance2.constant2 + instance2.constant3;
    uint value1 = uint2int(variable1);

    instance3.constant4 = uint((instance3.constant4) + value1);
  }
  function add2() public {
    uint variable2 = instance1.constant1 + instance2.constant2 - instance3.constant3;
    uint value2 = uint2int(variable2);
    uint value22 = uint2int(instance4.constant4);
    uint value23 = uint2int(instance1.constant1);
    uint minValue = uint(min(value22, value23));

    uint maxValue = max(value22, value23);
    uint maxMinValue = max(minValue, maxValue);
    uint add1 = uint((instance2.constant4) +
