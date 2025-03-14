pragma solidity ^0.8.0;
contract ContractWithFallbackMutatedExample{
    address self = msg.Sender;
    constructor() {
        self.callContractWithFallback(self, "Test data");
        self.callContractWithFallback2(self, self, "Test data.");
    }
}

pragma solidity ^0.8.0;
contract ComplexContractWithFallbackExample is CallContractWithFallbackExample {
    constructor () {
        _setFallbackFunction();
    }
    function _setFallbackFunction() private {
        self.callContractWithFallback(self, "Test data");
        self.callContractWithFallback2(self, self, "Test data.");
    }
}
