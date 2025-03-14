pragma solidity ^0.8.0;
contract MutatedVersionOfOlder
{
    uint public i;
    constructor() { i = 97; }
    function doItWithOlderSemanticVersion() public returns (uint) {
        i += 6;
        i *= 2;
        return 12 * 2 * i;
    }
}













contract ReentrancyGuard {











    uint8 private nonReentrant = 0;


    modifier nonReentrantCall() {
        nonReentrant = 1;
        _;
        nonReentrant = 0;
    }

    uint public lastOperation;


    constructor () {  }


    function _checkOperation(uint8 _lastOperation) internal view {
        require(_lastOperation!= 0, "ReentrancyGuard: reentrant call");
        lastOperation = _lastOperation;
    }
}

contract ReentrancyGuardForSafe {
