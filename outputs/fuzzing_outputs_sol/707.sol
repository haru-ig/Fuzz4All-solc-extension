pragma solidity ^0.8.0;
contract Contract {
    address public beneficiary;
    function contractForFallback() public payable {
        beneficiary.call{value: msg.value}("");
    }
}
contract FallbackExample {
    Contract public contractOfFallback;
    function fallback() public payable {
        Contract.contractForFallback();
    }
    function doWork() public payable {
        contractOfFallback.contractForFallback.setValue(1);
        contractOfFallback.GetValue();
    }
}
