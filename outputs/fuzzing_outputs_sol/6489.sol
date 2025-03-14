pragma solidity ^0.8.0;

contract C {
    function bar() public {
        address payable p;
        p.send(0);
    }
}
