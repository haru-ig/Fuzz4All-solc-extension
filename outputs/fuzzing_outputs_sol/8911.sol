pragma solidity ^0.8.0;
contract ContractWithFallback {
    function contractWithoutFallback() public {
        ContractWithoutFallback() {}
    }
}
contract ContractWithoutFallback {
    function contractWithFallback() public payable {
    }
}
