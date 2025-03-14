pragma solidity ^0.8.0;
contract Caller {
    function call() public {
        MutantFallback mutantFallback = MutantFallback();
        mutantFallback.call();
        mutantFallback.normalCall();
        mutantFallback.externalCall();
    }
    function transfer() public {
        MutantFallback mutantFallback = MutantFallback();
        mutantFallback.transfer();
        mutantFallback.normalTransfer();
        mutantFallback.externalCall();
    }
}
