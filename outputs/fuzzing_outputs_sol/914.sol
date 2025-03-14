pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {
        call().sendValue(msg.value);
    }
    function call() public payable {

    }
}
