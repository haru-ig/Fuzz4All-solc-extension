pragma solidity ^0.8.0;
contract Caller {
    address payable fallbackFunction;

    function () external payable {
        fallbackFunction.call.value(msg.value)("");
    }

    function setFallbackFunction(address payable _fallbackFunction){
        fallbackFunction = _fallbackFunction;
    }
}
