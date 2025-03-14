pragma solidity ^0.8.0;
contract Constant {
   enum ConstantEnum { ONE, TWO, THREE };
}
contract NonConstant {
   enum NonConstantEnum { ONE, TWO, THREE };
}
contract MyComparisons {
   uint constant value;
   uint public value_int;
   uint8 constant value_int8;
   uint constant value_int_u8;
   uint8 constant value_int_u8_e8;
   uint public value_u64;
   uint8 public value_u64_u8;
   uint public value_u128;
   uint8 public value_u128_u8;
   uint public value_u256;
   uint8 public value_u256_u8;
   String memory string_memory;
   uint value_u256_u8_memory;
   uint public value_u128_u8_memory;
   String[] memory string_array;
   Array.Lib.LibLib.int256[] memory array;
   uint8 array_u8_a;
   uint8[] memory array_u8;
   uint8 array_u8_memory;
   uint8[] array_u8_memory;
}
