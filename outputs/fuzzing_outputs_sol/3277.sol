pragma solidity ^0.8.0;

contract ContractWithFallback {
    function callFallback() public {

        (address(Caller()).call.value(1 ether)("");) *;

        (address(Caller()).call.value(2 ether)("",));

        receive() payable;
    }
}
