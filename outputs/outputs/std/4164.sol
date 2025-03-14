pragma solidity ^0.8.0;
contract Array6{
  uint16[32] memoryOfMemoryArray2;
}
contract Array7{
  uint16[32] memoryOfMemoryArray3;
}
contract Array8{
  uint16[32] memoryOfMemoryArray4;
}
contract Array9{
  uint16[32] memoryOfMemoryArray5;
}
contract Array11{
  uint16[32] memoryOfMemoryArray7;
}
contract Array12{
  uint16[32] memoryOfMemoryArray8;
}
contract Array13{
  uint16[32] memoryOfMemoryArray9;
}
contract MultiArray{
  Array2[3] array;
  Array5[3] memory arrayMemory;
  Array6[4] memory arrayMemory2;
  Array7[4] memory arrayMemory3;
  Array8[4] memory arrayMemory4;
  Array9[5] memory arrayMemory5;
  Array11[5] memory arrayMemory7;
  Array12[5] memory arrayMemory8;
  Array13[5] memory arrayMemory9;
}
contract MemoryCheck{
  uint16[] arrayAddress;
}
contract DivisionByZero{
  uint8 div_by_zero_contract;
}
contract ArrayOverflow{
  uint16 i16_array_value;
  uint256[8] uint256_array_value_to_check;
}
