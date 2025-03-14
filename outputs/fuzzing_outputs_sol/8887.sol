pragma solidity ^0.8.0;
contract Caller {
    address payable fallbackCaller;
    event Executed(address value);
    constructor () {
        fallbackCaller = msg.sender;
    }
    function callWithFallbackToCaller() public {
        emit Executed(fallbackCaller);
    }
    function callWithFallbackToCallerAndCallStorage() public {
        fallbackCaller.call{value: 1 ether}("");
        emit Executed(fallbackCaller);
    }
}
