pragma solidity ^0.8.0;
contract M is C {

    function bar() public {
        address payable p = payable(msg.sender);
        p.call.value(0)(address(msg.sender));
    }
}
