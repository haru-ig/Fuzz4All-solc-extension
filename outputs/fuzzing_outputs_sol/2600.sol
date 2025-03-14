pragma solidity ^0.8.0;
contract semanticallyEquivToMutatedFallback {
    uint public fallbackValue = 1;
    fallback function () {
        fallbackValue = 2;
    }
}
