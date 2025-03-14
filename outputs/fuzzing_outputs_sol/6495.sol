pragma solidity ^0.8.0;
contract C {
    function bar() public {
        address payable p = payable(0);

        p.send(payable(0));
        emit Sent{a:payable(0)};
    }
    event Sent (payable a);
}
