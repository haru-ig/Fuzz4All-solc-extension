pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_arrays_V2 {
  #[] bytes public bytesArray;
  #[] bytes public bytesArray2;
  #[] bytes public bytesArray3;
  #[] bytes public bytesArray4;
}
contract SemanticallyEquivalentSolidity77_arrays_V3 {
  #[] bytes public readonly bytesArray;
  #[] bytes public readonly bytesArray2;
  #[] bytes public readonly bytesArray3;
  #[] bytes public readonly bytesArray4;
}
contract SemanticallyEquivalentSolidity77_arrays_V4_old {
  bytes public bytesArray;
  bytes public bytesArray2;
  bytes public bytesArray3;
  bytes public bytesArray4;
  bytes public emptyBytes3;
  bytes public emptyBytes4;
}
contract SemanticallyEquivalentSolidity77_arrays_V4 {
  bytes public bytesArray;
  bytes public bytesArray2;
  bytes public bytesArray3;
  bytes public bytesArray4;
  bytes public emptyBytes3;
  bytes public emptyBytes4;
}
/* This program should print the following before execution:
  "bytes[4]"
  "bytes[4][32]"
  "bytes[4][32][32]"
  "bytes[4][32][32][32]"
  "bytes[4][32][32][32][32]"
  "bytes[4][32][32][32][32][32]"
  bytes 4 [
    32
  ] 32 [
    32
  ] 32 [] 32 [] 32 [] 32 [] 32 [] 32 []
  bytes[4][4]"
  "bytes[4][4][4]"
  "bytes[4][4][4][4]"
  "bytes[4][4][4][4][4]"
  "bytes[4][4][4][4][4][4]"
  "bytes[4][4][4][4][4][4][4]"
  "bytes[4][4][4][4][4][4][4][4]"
  "bytes[4][4][4][4][4][4][4][4][4]"
  "bytes[4][4][4][4][4][4][4][4][4][4]"
  "bytes[4][4][4][4][4][4][4][4][4][4]"
  "bytes[4][9]"
  [] [] [
    32
  ] [] [] [
    32
  ] [] [] [] [] [
    32
  ] [] [] [] [] [] [] [] [] 3
