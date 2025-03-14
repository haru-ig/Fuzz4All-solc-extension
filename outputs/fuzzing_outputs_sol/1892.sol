pragma solidity ^0.8.0;
contract SimpleFallback {
    address payable _contractAddress;
    constructor(address payable _contractAddress) {
        _contractAddress = _contractAddress;
    }
    receive() public payable {}
    fallback () external payable {
        emit Transfer(_contractAddress, 0x0, msg.value, 1, 1);
    }
    event Transfer(address contractAddress, address indexed from, uint256 value, uint256 gasPrice, uint256 gasLimit);
}
