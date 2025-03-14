pragma solidity ^0.8.0;
contract CallThis {
    function callThis(uint _amount) public {
        address payable contractToCall;

        contractToCall = FallbackCaller.fallback();
        contractToCall.send(_amount);
    }
}
