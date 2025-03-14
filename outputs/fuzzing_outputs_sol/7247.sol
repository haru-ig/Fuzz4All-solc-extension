pragma solidity ^0.8.0;
contract ValueWithoutFallback {
    address public valueToCaller;
    constructor(address _caller) {
        valueToCaller = _caller;
    }
    function example2() public {
        valueToCaller = msg.sender;
    }
}
