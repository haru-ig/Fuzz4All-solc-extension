pragma solidity ^0.8.0;
interface IE { address[] getAddresses();}
contract Test
{ IE pub a; address storage field; function f() public { a.address[0] = field; } }
