pragma solidity ^0.8.0;
contract Caller {
    address public valueToCaller;
    constructor(address _caller) {
        valueToCaller = _caller;
    }
    function example4() public {
        require(msg.value < 0.05 ether);
        valueToCaller = msg.sender;
    }
}
