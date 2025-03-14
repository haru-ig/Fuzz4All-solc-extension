pragma solidity ^0.8.0;
contract BackwardsCompatibleCaller {
    SimpleCaller payable _simpleCaller;
    constructor(address payable simpleCallerAddress) {
        _simpleCaller = SimpleCaller(simpleCallerAddress);
    }
    receive() public {
        _simpleCaller.fallback.value(address(this).balance)();
    }
}
