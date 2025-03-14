pragma solidity ^0.8.0;
contract ContractFallback {
    constructor() {}

    function fallback() pure external {}

    function fallback() payable external {}
}
contract Caller {
    fallbackContract contractFallback;
    constructor() {
        contractFallback = new ContractFallback();
    }
    receive() payable external {}
    receive() external {}
    receive() constant external {}
    receive() storage {}
    receive() payable storage {}
    receive() contractFallback payable {}
    receive() contractFallback payable storage {}
    receive() contractFallback storage {}
    receive() contractFallback storage contractFallbackStorage {}
    receive() contractFallback constant storage {}
}
