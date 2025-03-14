pragma solidity ^0.8.0;
contract myContract {
    uint public fallbackValue;
    constructor() fallback(function() { payable(msg.sender).transfer(0); }) {
        fallbackValue = 1;
    }
}
pragma solidity ^0.8.0;
