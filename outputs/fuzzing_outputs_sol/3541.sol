pragma solidity ^0.8.0;
contract MutatedFallback {
    fallback () external {
        memoryStorage1 = 3;
    }

    uint256 private memoryStorage1;
}

pragma solidity ^0.8.0;
contract ContractA {
    function () payable external {}
}

contract ContractB is ContractA {
    function () payable external fallback(uint256) {}
}

contract ContractC {
    ContractB contractA;
    constructor () payable external { contractA = new ContractB(); }
}
