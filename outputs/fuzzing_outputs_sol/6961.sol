pragma solidity ^0.8.0;
contract OldMutator {
    uint public immutable number_;
    uint public stored_;
    constructor () {
        number_ = 123;
    }
    function mutate() public {
        stored_ += 2_000_000_000;
    }
    function readStored() public pure returns (uint) {
        return stored_;
    }
    function readNumber() public pure returns (uint) {
        return number_;
    }
}

pragma solidity ^0.8.0;
contract MutatorCaller {
    function mutate() public {
        stored_ += 2_000_000_000;
    }
    function readStored() public view returns (uint) {
        return stored_;
    }
    function fallback() public payable {
        stored_ += 1_000_000_000;
    }
    receive() external payable {
        stored_ += 0_100_000_000;
    }
}
