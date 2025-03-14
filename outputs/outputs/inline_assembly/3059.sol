pragma solidity ^0.8.0;

contract C {
  mapping(uint=>uint) public b;

function C1() public payable{
  bytes memory data = abi.encode(10);
bytes memory data1 ="\x60\x48\x3b\x0b\xcd\x9a\x39\x61\x91\x90\x84\xf9\x20\x89\xd5\x4d\x05\x2b\xe9\xe7\x09\xf8\x28\xb9\x64\xaf\xf5\xba\xc5\xfb\x5d\x26";
assembly
  let c := mload(0x40)
  mstore(0x3c, c)
  mstore(0x38, add(data, data1))
  mstore(0x60, add(add(0x3c, 0x20), 0x10))
  msize
  mstore(0x3c, mload(0x38))
  msize
  mstore(0x3c, mload(0x38))
  msize
let b := mload(0x38)
b := add(b, add(b, add(0x3, 0x3)))
  msize
  mstore(0x50, add(0x3c, 0xc))
  msize
  if gt(b, 0xe20) {
  div_ sgt(b, 2)
  sub sp, 0x20
let s := mload(0x3c)
let t := sub(s, b)
let z := mul(s, 0xf00d)
let w := div(t, 0xf00d)
let v := mul(z, w)
let u := mul(u, 0xf00d)
let t := sub(t, b)
let v := mul(v, c)
let w := mul(u, 0xf00d)
let z := sub(w, v)
if gt(z, 32) {
eq (0xff, mload(add(0x50, 0x4)))
let q := div(z, 0xffffd5959ca8c25ef)
eq (0xb, mload(add(0x50, 0x3)))
let r := div(z, 0xf00d)
