pragma solidity ^0.8.0;
interface old_sn6097 { uint public x; function get() view returns(uint); }
contract old_sn6136 { uint private x = 1; function mutate() public { x = 2; } function get() view public returns(uint) { return x; } }
