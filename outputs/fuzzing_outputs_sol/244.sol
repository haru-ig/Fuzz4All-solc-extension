pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback5 is CallFallbackFunctionTwoPlusFallback4 {
    mapping (address => uint) public balances;
    constructor() payable {}
    fallback payable {}
    function increaseBalance() external payable {
        balances[msg.sender] += msg.value;
    }
}
