pragma solidity ^0.8.0;
contract FallbackMutator {
    method(address _caller) {
        _caller.payable;
    }
    function mutate() external {
        return;
    }
}
