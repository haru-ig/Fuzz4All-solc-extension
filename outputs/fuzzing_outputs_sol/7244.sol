pragma solidity ^0.8.0;
contract ValueWithoutFallback {
    address public valueToCaller;
    function example2() public payable {
        valueToCaller = msg.sender;
    }
}
