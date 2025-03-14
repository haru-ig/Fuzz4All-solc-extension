pragma solidity ^0.8.0;
contract ContractForFallbackMutated3{
    function callValue(address contract, bytes memory data) public {
        require(
            contract.call{value: 40}(data),
            "Expected return code 0 because of bad argument."
        );
        contract.call{value: 40}(data);
        contract.call{value: 10}(data);
        contract.call{value: 10}(data);
        contract.call{value: 100}(data).value(100);
        contract.call{value: 1}(data);
        contract.call{value: 999}(data);
        contract.call{value: 10000000}(data);
    }
}
