pragma solidity ^0.8.0;
mapping(address => uint256) a;
address[1] b;
uint256[] c;
address[2] d;
struct S {uint256 x; uint256 y; uint32 z}
function add1(uint256 i) public {
    uint256 i0 = uint256(uint8(i));
    uint256 i2 = i0 + 1;
    uint256 i4 = i2 + 1;
    uint256 i6 = i4 + 1;
    a[cadd(uint32(uint8(7)),i)] = add2(uint32(uint8(3)),uint32(i));
    a[cadd(uint32(uint8(7)),i)] = add2(uint32(uint8(10)),uint32(i));
    a[cadd(uint32(uint8(7)),i)] = add2(uint32(uint8(16)),uint32(i));
    a[cadd(uint32(uint8(127)),i)] = add2(uint32(uint8(2)),uint32(1));
    a[cadd(uint32(uint8(127)),i)] = add2(uint32(uint8(4)),uint32(1));
    a[cadd(uint32(uint8(127)),i)] = add2(uint32(uint8(8)),uint32(1));
    a[cadd(uint32(uint8(128)),i)] = add2(uint32(uint8(
