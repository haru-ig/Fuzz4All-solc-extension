pragma solidity ^0.8.0;
contract Contract4
{
    bytes32 constant id = bytes32(keccak256("Fallback4"));
    event ContractCreated(address _address);
    address _address;
    mapping(bytes32 => function(uint64) external payable returns (bool));
    Fallback4 public f;
}
