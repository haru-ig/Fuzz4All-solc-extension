pragma solidity ^0.8.0;
contract Callers {
    function call() public {
        Transfers t = new Transfers();
        t.transferFrom.value(msg.value)();
    }
}
