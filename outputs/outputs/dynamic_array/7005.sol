pragma solidity ^0.8.0;
contract Test71 {
        bytes32 public foobar;
        address public other;
        constructor() public {
                other = msg.sender;
                foobar = keccak256("Foo");
        }
}
