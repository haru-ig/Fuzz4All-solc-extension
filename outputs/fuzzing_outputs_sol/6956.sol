pragma solidity ^0.8.0;
contract Mutator {
    uint public immutable number_;
    constructor () {
        number_ = 123;
    }
    modifier onlyIfValueExists() {
        if (number_ == 123) {
            _;
        }
    }
    function mutate() onlyIfValueExists public {
        stored_ += 2_000_000_000;
    }
    function readStored() public view returns (uint) {
        return stored_;
    }
    function readNumber() public view returns (uint) {
        return number_;
    }
}
