pragma solidity ^0.8.0;
contract ReentrancyExample {
    function callExample() {
        ReentrancyExample callExampleWithNoReentrancy();
    }
    function callExampleWithNoReentrancy() internal virtual returns (uint256) {
        _doReentrancyCall();
        return 8;
    }
    function _doReentrancyCall() internal virtual {
        require(false);
    }
}
