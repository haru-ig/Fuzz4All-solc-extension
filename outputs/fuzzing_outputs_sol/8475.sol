pragma solidity ^0.8.0;
contract CallerExample6 {
    function fallback() public {
        CallerExample6.CallerExample7 receiver = CallerExample6.CallerExample7(msg.sender);
        receiver.getReturnValueAndLog();
    }
}
