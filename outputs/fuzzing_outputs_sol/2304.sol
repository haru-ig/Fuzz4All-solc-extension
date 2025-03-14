pragma solidity ^0.8.0;
contract Fallback {
    fallback () external payable{}
library lib {
    function fallback() internal view returns (address) {
        return address(new BackwardCompatibility());
    }
}

contract HelloWithFallback {
    BackwardCompatibility _backwardCompatibility;
    constructor(backwardCompatibility) {
        _backwardCompatibility = backwardCompatibility;
    }
    function fallback() external payable {}
}
