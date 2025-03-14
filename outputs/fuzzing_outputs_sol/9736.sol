pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated {


    modifier contract(bytes32 _contract) {
        require (msg.sender == address(uint160(_contract)), "Caller");
        _;
    }
    constructor(bytes32 contract) public contract(contract) {
    }
    receive() external payable {
    }
}
