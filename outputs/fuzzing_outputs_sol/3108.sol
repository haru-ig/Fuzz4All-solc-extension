pragma solidity ^0.8.0;
contract Contract12MutSemis{
    event Fulfilled(uint256 value);
    uint256 public num;
    receive() external payable {}
}
contract Contract12NSemis{
    event Fulfilled(uint value);
    uint256 public num;
    receive() external payable {}
}
