pragma solidity ^0.8.0;
contract Test72 {
        bytes4 public foobar;
        address public other;
        uint8 public bar;
        constructor() public {
                other = msg.sender;
                foobar = bytes4(keccak256("Foo"));
        }
}
