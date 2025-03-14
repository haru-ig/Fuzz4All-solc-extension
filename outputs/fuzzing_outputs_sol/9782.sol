pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutated2 {
    bytes32 public msg_;
    mapping(address => uint256) public balance_;
    constructor(bytes32 _msg) {
        msg_ = _msg;
        balance_[msg_] = 100;
    }

    fallback() external payable {
        balance_[msg_] += msg.value;
    }

    receive() external payable {
        balance_[msg_] += msg.value;
    }
}
