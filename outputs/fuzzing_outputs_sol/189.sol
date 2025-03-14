pragma solidity ^0.8.0;
contract CallFallbackFunction4 {
    constructor() {
        fallback();
    }

    receive() external payable {
    }

    fallback() external payable {
        throw;
    }
}
