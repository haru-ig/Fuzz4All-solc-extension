pragma solidity ^0.8.0;
contract SimpleFallbackCaller {

    address contractToCall;
    address fallbackTo;
    uint8 internal constant METHOD_ID_MUTATOR = 1;
    uint8 internal constant METHOD_ID_ADDRESS = 2;
    constructor() {
        contractToCall = address(0);
        fallbackTo = address(new Mutator());
    }

    function Mutator() {
        contractToCall = address(fallbackTo);
        fallbackTo = address(0);
    }

    function setContractToCall(address newContractToCall) public {
        contractToCall = newContractToCall;
    }

    function setFallbackTo(address newFallbackTo) public {
        fallbackTo = newFallbackTo;
    }

    function MutatorFallback() public final payable {
        assembly {
            let mutator_method_id := and(calldataload(4), 0xff)
            let mutator_size := and(calldataload(16), 0x00ffffff)

            let method := switch switch case div switch case mod switch case exp switch default
        }
        assembly {
            switch case method when eq(add(method, 8), 900)
                switch case method when eq(add(method, 128), 901)
            default switch case method when eq(method, 0xfc)
                switch case method when eq(method, 0xfd)
            default switch case method when eq(method, 0xae)
                switch case method when eq(method, 0xaf)
                switch default calldatacopy(mutator_size)
        }
        if (contractToCall == address(0))

            _;
        else
            try contractToCall.call.value(address(this).balance) all.()
            catch { revert(0, "Fallback execution failed"); }
        fallbackTo = contractToCall;
    }
}
