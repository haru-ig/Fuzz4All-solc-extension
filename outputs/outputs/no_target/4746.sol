pragma solidity ^0.8.0;
contract C
{
uint8 internal myInt = 28;
constructor (bool ok) {
 myInt = ok? 14 : 28;
}
uint8 public myUint;
}
