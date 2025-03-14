pragma solidity ^0.8.0;
contract myContract {
    uint public fallbackValue;

    fallback () payable {
        fallbackValue = 1;
    }
}
