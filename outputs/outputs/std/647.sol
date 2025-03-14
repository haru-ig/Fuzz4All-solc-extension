pragma solidity ^0.8.0;
contract Addressable
{
    address payable public addr;
}
contract ContractWithAddress
{
    address public theAddr;
    Addressable public theAddrable;
}
