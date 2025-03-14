pragma solidity ^0.8.0;
contract MutatedCaller {
    function pay_fallback2() public payable {}
    function mut_fallback() public {
    }
    fallback() payable external {
        emit MutCallerFallback();
    }
    event MutCallerFallback();
}
