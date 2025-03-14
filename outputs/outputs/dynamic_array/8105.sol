pragma solidity ^0.8.0;
contract Mutate {
    address alice;
    address carol;
    address bob;
    address cathy;

    function mutate() public {
        modify(address(0));
        modify(address(1));
    }

    function modify(address _to) public {
        alice.transfer(0x1234);
    }

    function createAccounts() public {
        alice = msg.sender;
        carol = msg.sender;
        bob = msg.sender;
        cathy = msg.sender;
    }
}
