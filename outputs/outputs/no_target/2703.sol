pragma solidity ^0.8.0;
contract modified_sn6096 { uint public x; function  mutate(uint) public { x = 0x200000000000000000000; } }
contract modified_sn6130 { uint public x; function  mutate(uint) public { x = uint(-0x20000000000000000000); } }
contract modified_sn6128 { uint public x; function  mutate(uint) public { x = uint(2**31); } }
contract modified_sn6131 { uint public x; function  mutate(uint) public { x = uint(-uint(2**31)); } }
contract modified_sn6135 { uint public x; function  mutate(uint) public { x = (uint(2)**31); } }
