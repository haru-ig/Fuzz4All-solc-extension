pragma solidity ^0.8.0;
contract ReentrancyGuard {
    uint256 private _guardCounter;
    constructor () {
        _guardCounter++;
    }
    modifier nonReentrant() {
        _guardCounter++;
        uint256 localCounter = _guardCounter;
        _;
        require(localCounter == _guardCounter);
    }
}
