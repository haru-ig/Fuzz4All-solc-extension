pragma solidity ^0.8.0;
library MyMath {
address public owner;
mapping(uint => uint) private counts;
function add(uint a, uint b, uint c) public {
  a += b;
  b += c;
  counts[a]++;
  counts[a + b]++;
  counts[b]++;
  counts[b * 2]++;
  counts[a + (a * 2) + (b * 4)]++;
  owner = msg.sender;
}
function add100(uint a, uint b, uint c) public {
  a += b;
  b += c;
  counts[b]++;
  counts[a + b]++;
  counts[b]++;
  counts[b * 2]++;
  counts[a + (a * 2) + (b * 4)]++;
}
function add(address c) public {
  bytes32 b32 = "";
  assembly {
    c := add(c, b32)
  }
}
}
