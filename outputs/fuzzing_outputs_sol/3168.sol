pragma solidity ^0.8.0;
contract Contract11Mut4{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    fallback() external payable {
        num = 1;
        num = 2;
    }
}
