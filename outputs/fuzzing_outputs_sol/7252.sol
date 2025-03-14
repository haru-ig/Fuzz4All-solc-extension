pragma solidity ^0.8.0;
contract ValueWithFallback {
    address public valueToCaller;
    constructor(address _caller) {
        valueToCaller = _caller;
    }
    function example3() public {
        valueToCaller = msg.sender;
    }
}
