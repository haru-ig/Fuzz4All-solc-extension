pragma solidity ^0.8.0;
contract MutatedCaller2 {
    fallback payable {
        emit MutCallerFallback();
    }
    function mut_fallback() public {
    }
    event MutCallerFallback();
}
