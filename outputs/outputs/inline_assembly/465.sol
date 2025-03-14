pragma solidity ^0.8.0;
contract SemanticallyEquivalenty19 {

  constructor () public {
      emit Log(0x1337, "10.01", "0.0005");
      emit Log(0x1339, "10.0001", "0.0003");
      emit Log(0x133B, "10.00007", "0.004e67");
      emit Log(0x133D, "0.00014", "0.0006");
      emit Log(0x133F, "0.054354", "0.00005");
  }
  event Log(uint value1, string value2, string value3);
}
