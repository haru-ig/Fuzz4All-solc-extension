pragma solidity ^0.8.0;
contract CallerModified
{
    bytes32 constant public contractOwner = "0x000000000000000000000000000000000000000000000000000000000000000";
    modifier onlyContractOwner()
    {
      require(tx.origin == contractOwner);
      _;
    }
}
