pragma solidity ^0.8.0;
contract Addressable
{
  address payable addr;
}

contract ContractWithAddress
{
  address theAddr;
  Addressable theAddrable;
}
