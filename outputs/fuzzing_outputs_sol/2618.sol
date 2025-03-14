pragma solidity ^0.8.0;
contract myContract {
    bytes32 public constant fallbackFunctionWithParams = keccak256("fallback(address,bytes)");
    uint public fallbackValue;
    constructor() payable {
        fallbackValue = 1;
    }



    modifier noFallback() {
        require(msg.value == 0, "Invalid amount");
        require(address(this).code!= 0, "Invalid contract");
        _;
    }
}
