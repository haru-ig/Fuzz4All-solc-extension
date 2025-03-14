pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback {
    constructor() payable {}
    fallback () external payable {}
}



pragma solidity ^0.7.0;


contract A {
    modifier B() {
        revert("This function can't be called");
        _;
    }
}
