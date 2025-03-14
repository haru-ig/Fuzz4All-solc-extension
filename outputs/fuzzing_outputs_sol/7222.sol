pragma solidity ^0.8.0;
contract Caller {
    function example1() public {
        valueFromCaller = msg.sender;
        valueFromCaller.transfer(msg.value);
    }

    receive() external payable {

    }
}
