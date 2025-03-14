pragma solidity ^0.8.0;
contract ModifiedMutatedFallbackExample{
    constructor (address pay to) {
        address payable fallback = this.originalFallback;
    }
    function mutatedFallback() external {
    }
}
