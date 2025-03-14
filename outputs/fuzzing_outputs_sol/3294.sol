pragma solidity ^0.8.0;


contract SomeContract {
    uint public x;
    address public lowLevelAddress;
    constructor() public {
        lowLevelAddress = address(new SomeContract());
    }
    function lowLevel(address lowLevelAddress_) public {
        lowLevelAddress = lowLevelAddress_;
    }
    function read() public pure returns (uint) {
        return x;
    }
}
