pragma solidity ^0.8.0;
contract C {
    function bar() public {
        address payable p = payable(msg.sender);
        p.send(0);
        p.send.gas(0);
    }
}
