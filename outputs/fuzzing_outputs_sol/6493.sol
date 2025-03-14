pragma solidity ^0.8.0;
contract C {
    function bar() public {
        address payable p = payable(0);
        p.send(0);
    }
}
