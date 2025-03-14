pragma solidity ^0.8.0;
contract Contract12Mut{
    event Fulfilled(uint value);
    uint public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
}
contract Contract12N{
    event Fulfilled(uint256 value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
}
