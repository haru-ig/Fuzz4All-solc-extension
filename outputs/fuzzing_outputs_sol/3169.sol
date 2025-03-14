pragma solidity ^0.8.0;
contract Contract12Mut6{
    event Fulfilled(uint256 value, address owner);
    uint256 public num;
    function () external payable {
        num = 1;
        emit Fulfilled(num, msg.sender);
    }
}
