pragma solidity ^0.8.0;
contract Mutator { constructor () {
   uint256 test = 0;
   uint256 test1 = 0;
} function test() public pure {
   test = uint32(uint(uint64x8(test1)));
   test1 = uint32(uint(uint64x8(test)));
   test = test ^ uint32(uint(uint64x8(256)));
} function test2() public pure {
   uint64x8 storage test3 = uint64x8(uint32(uint(uint64x8(uint64x8(uint32(uint64x8(uint64x8(uint64x8(uint64x8(uint64x8(uint64x8(uint64x8(uint64x8(test1)))))))))))))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64x8(256))) ^ uint64x8(uint(uint64
