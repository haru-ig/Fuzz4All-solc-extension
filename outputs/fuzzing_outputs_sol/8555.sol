pragma solidity ^0.8.0;
contract CallerExample20 {
    event Event();

    function call() public payable {
        Event.value(msg.value)(address(0));
    }
}
