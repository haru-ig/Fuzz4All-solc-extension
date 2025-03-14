pragma solidity ^0.8.0;
contract NewSemanticsFallback {
    uint256 public value;
    fallback () public payable
    {
        value += address(this).balance;
    }
}
