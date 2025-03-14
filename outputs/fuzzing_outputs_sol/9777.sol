pragma solidity ^0.8.0;
contract Mutated3 {
    string public msg_;
    constructor(string memory _msg) {
        msg_ = _msg;
    }
    receive() external payable { }
}
