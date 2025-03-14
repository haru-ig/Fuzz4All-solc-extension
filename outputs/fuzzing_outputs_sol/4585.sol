pragma solidity ^0.8.0;
contract MutatedExample {
    address contract1 = address(new ContractWithFallback());
    bool b = true;
    fallback () external {
        b = false;
    }
    receive () external payable {
    }
}
