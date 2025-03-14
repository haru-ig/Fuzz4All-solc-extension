pragma solidity ^0.8.0;
contract Caller {
    uint lowLevelCallResult;
    constructor() public {
        lowLevelCallResult = lowLevel();
    }

    function lowLevel() public pure returns (uint) {
        return lowLevelFallback(10);
    }

    function call() public pure returns (uint) {
        return lowLevelFallback(10);
    }
}
