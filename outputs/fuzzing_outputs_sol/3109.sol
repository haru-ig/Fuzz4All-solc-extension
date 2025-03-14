pragma solidity ^0.8.0;
contract Contract13Mut{
    event Fulfilled(address indexed owner, uint indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract13N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
