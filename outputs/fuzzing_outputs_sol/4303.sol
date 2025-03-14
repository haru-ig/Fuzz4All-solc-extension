pragma solidity ^0.8.0;
contract MutatedSimpleFallbackMutator {
    uint internal x;
    fallback() external payable {
        if (msg.value == 0) {
            x = 1;
        } else {
            x = 10;
        }
    }
}

pragma solidity ^0.8.0;
contract MutatedSimpleFallbackMutatorWithCallAndReturn {
    uint internal x;
    fallback() external payable returns(uint) {
        if (msg.value == 0) {
            x = 1;
            return x;
        } else {
            x = 10;
            return x;
        }
    }
}
