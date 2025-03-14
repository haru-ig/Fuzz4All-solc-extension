pragma solidity ^0.8.0;
contract MemoryMutated {
uint[] array
uint[2][22] mutable array2
uint[10][33][33] _mantissa
uint32[10][10] private _uintArray
address[10][10] private _addressArray
constructor() {
  array = [1,2,3];
  uint(array);
  delete array[1];
  array[0] = 5;
  uint1(array[0]);
  _uintArray = [10,10,10];
  array2[0][0] = 5;
  uint2(array2[0][0]);
}
}
