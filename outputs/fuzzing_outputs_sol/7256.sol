pragma solidity ^0.8.0;
contract ValueWithFallback {
    address public valueToCaller;
    function example1() public payable {
        valueToCaller = msg.sender;
    }
    function example2() public view {
        require(valueToCaller == msg.sender, 'CallerAddress');
    }
    function example3() public {
        valueToCaller = msg.sender;
    }
}
