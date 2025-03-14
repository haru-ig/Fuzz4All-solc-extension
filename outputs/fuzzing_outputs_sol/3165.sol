pragma solidity ^0.8.0;
contract Contract11Mut4{
    event Fulfilled(address owner, bool value);
    bool public value;
    fallback() external payable {
        uint256 num = 1;
        value = true;
        emit Fulfilled(msg.sender, value);
    }
}
