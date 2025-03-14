pragma solidity ^0.8.0;
contract Caller {

    address payable fallbackFunction;

    function() external payable {
        require(msg.value == 1000);
        fallbackFunction.call.value(1000)();
    }

    constructor() {
        fallbackFunction = EtherFallbackAddress();
    }

    receive() external payable {
        fallbackFunction.receive.value(msg.value)();
    }
}
