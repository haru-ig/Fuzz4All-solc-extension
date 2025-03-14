pragma solidity ^0.8.0;
contract Addressable
{
  address public addr;
}
contract ContractWithAddress is Addressable
{
  modifier onlyAddr()
  {
    require(_msgSender() == theAddr, "ONLY-ADDR");
    _;
  }
}
