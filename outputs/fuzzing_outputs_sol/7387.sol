pragma solidity ^0.8.0;
contract ContractWithFallbackAndReceive {
    mapping (address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = 0;
    }

    receive() external payable {}

    fallback() external payable {
        uint256 balance = balanceOf[msg.sender];
        this.valueOf[this.transfer(msg.sender, balance), msg.sender];
    }
}
