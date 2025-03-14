pragma solidity ^0.8.0;
class FallbackFunctionExample{

    Mutator public contract;
    constructor(Mutator _contract) {
        contract = _contract;
    }

    function fallback() public payable {
        contract.sendValue(msg.value);
    }
}
