pragma solidity ^0.8.0;
address TheAddress = 0x7183B77876B697dEd6A5E8A6372b63c9C27bB9B4;

Addressable storage A;

address TheAddress = 0x7183B77876B697dEd6A5E8A6372b63c9C27bB9B4;
A.addr = TheAddress;

Addressable storage A = storageAt(0x7183B77876B697dEd6A5E8A6372b63c9C27bB9B4);

struct Addressable
{
  bytes32 name;
  uint[] theBytes32;
}
