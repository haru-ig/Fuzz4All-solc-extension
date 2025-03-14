pragma solidity ^0.8.0;
contract D is C {
    function bar() public {
        address payable p = payable(0);
        p.transfer(1 ether);
    }
}
