pragma solidity ^0.8.0;
contract emulator4 {
  uint z;
  function test() public returns(uint) { uint x1=10000000000000; uint x2=10000000000000; for (uint i = 0; i < 100; i ++) { for (uint j = 0; j < 100; j ++) { uint w=10000000000000; x1 = x1 + w; z = z * x1; uint w=10000000000000; x1 = x1 - w; x2 = x2 * w; uint zw=10000000000000; z = z * zw; x2 = x2 - w; x1 = x1 * w; x1 = x1 + zw; } uint zw=10000000000000; z = z * zw; z = z - x1; } uint x1=10000000000000; uint x2=10000000000000; z = z * x2; uint zw=10000000000000; z = z * zw; return 0; }
}
/*
Program:

pragma solidity ^0.8.0;
contract emulator4 {
  uint z;
  function test() public returns(uint) { uint x1=10000000000000; uint x2=10000000000000; for (uint i = 0; i < 100; i ++) { for (uint j = 0; j < 100; j ++) { uint w=10000000000000; x1 = x1 + w; z = z * x1; uint w=10000000000000; x1 = x1 - w; x2 = x2 * w; uint zw=100
