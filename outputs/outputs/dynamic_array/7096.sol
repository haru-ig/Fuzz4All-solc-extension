pragma solidity ^0.8.0;
contract Mutator {
    function mutator() public payable {

        muter_[msg.sender] = true;
    }
    function mutaterSelf() public payable {
        mutatorSelf_[msg.sender] = true;
    }
    mapping(address => bool) muter_;
    mapping(address => bool) mutatorSelf_;
}
