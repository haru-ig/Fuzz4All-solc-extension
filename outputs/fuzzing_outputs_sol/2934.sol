pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint x;
    constructor () public {
        x = 1;
    }
    fallback () public {

    }
    fallback () external {

    }
    fallback () public external {

    }
    function fallbackData() public view returns (uint) {
        return x;
    }
    function f() public {
        uint x = 1 * (1 * 1);
    }
    event Fallback(uint input);
}
