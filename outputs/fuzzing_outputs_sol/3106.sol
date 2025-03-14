pragma solidity ^0.8.0;
contract Contract5{
    event Fulfilled(uint value);
    uint256 public num;
    receive() external payable {

        emit Fulfilled(num);
    }
}
