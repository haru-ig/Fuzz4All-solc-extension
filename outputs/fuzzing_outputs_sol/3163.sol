pragma solidity ^0.8.0;
contract Contract11Mut3{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    fallback() external payable {
        num = 1;
        emit Fulfilled(msg.sender, num);
    }
}
