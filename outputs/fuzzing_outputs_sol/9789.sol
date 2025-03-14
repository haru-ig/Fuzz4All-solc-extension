pragma solidity ^0.8.0;
contract Contract {
    constructor(address _to) {
        msg.sender == _to;
    }
    receive() public payable { }
}
