pragma solidity ^0.8.0;
contract FallbackMutated {
    function fallback() public pure returns(uint) {
        return 42;
    }
}

contract ContractWithFallback {

    constructor() payable {}

    function myCall() public {
        fallback();
    }

    function withData() public {
        fallback();
    }
}
