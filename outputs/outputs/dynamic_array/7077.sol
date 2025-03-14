pragma solidity ^0.8.0;
contract TestCaller{
uint8 public data;
constructor()public
{
data=uint8(address(this));
}
}
