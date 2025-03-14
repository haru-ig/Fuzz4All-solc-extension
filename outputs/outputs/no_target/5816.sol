pragma solidity ^0.8.0;
contract MyContract {
    function f() public {
        MyContract x = MyContract(msg.sender);
        address foobar = x.address();
    }
}
