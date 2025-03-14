pragma solidity ^0.8.0;
contract MutateCaller {

    Caller5 public sender_;
    bool immutable modified_;

    struct State {
        uint[] values;
        bytes32 constant valueHex = keccak256("this is a long string") ^ keccak256("this is another long string") ^ keccak256("this is third long string");
    }

    function get(uint i) view public returns (uint, uint) {
        return (sender_.fallback.value(address(this).balance)(_address(0)), sender_.fallback.value(address(this).balance)(););
    }

    function call() public view returns (uint, uint) {
        return (sender_.fallback.value(8)(address(this).balance), sender_.fallback.value(8););
    }

    constructor(Caller5 calldata sender) {
        sender_ = sender;
        modified_ = true;
    }

    function set(uint i) public {
        if (*(bool* const)(&modified_)) {
            throw;
        } else if (sender_(0)) {
            throw;
        }
        selfdestruct(0);
    }

    function set2(uint i) public {
        if (*(bool* const)(&modified_)) {
            throw;
        } else if (sender_(0)) {
            throw;
        }
        selfdestruct(0);
    }

    function main(uint i) public payable {
        set(i);
    }

}
