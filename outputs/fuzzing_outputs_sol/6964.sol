pragma solidity ^0.8.0;
contract Mutator {
    uint public immutable number_;
    uint public stored_;
    constructor () {
        number_ = 123;
    }
    fallback internal() {
        stored_ += 1;
    }
    function readStored() public view returns (uint) {
        return stored_;
    }
    function readNumber() public view returns (uint) {
        return number_;
    }
}
