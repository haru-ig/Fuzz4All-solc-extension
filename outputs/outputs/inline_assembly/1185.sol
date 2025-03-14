pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutantProgram {
  bytes32 constant X = '600';
  bytes32 x;
  bool executed;
  constructor() public {
    x = X;
   }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  bool public isExecuted;
  bytes32 y;
  function execute() public onlyIfExecuted {
    executed = true;
    y = x;
    x = bytes32(uint256(uint128(uint256(uint64(uint256(uint160(uint80(uint320(uint400(uint500(uint600(uint700(uint800(uint900(uint1200(uint1400(uint1600(uint1800(uint2200(uint2400(uint2800(uint3200(uint3600(uint4000(uint4400(uint4800(uint5200(uint5600(uint6000(uint6100(uint6400(uint6800(uint7200(uint7600(uint8000(uint8400(uint8800(uint9200(uint9600(uint1000(uint10100(uint10200(uint10300(uint10400(uint10500(uint10600(uint10700(uint10800(uint10900(uint11000(uint11100(uint11200(uint11300(uint11400(uint11500(uint11600(uint11700(uint11800(uint11900(uint12000(uint12100(uint12200(uint12300(uint12400(uint12500(uint12600(uint12700(uint12800(uint12900(uint13000(uint13100(uint13200(
