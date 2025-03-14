pragma solidity ^0.8.0;
contract Test71 {
        bytes32 public foobar;
        bytes public other;
        constructor() public {
                other = bytes(keccak256("Foo"));
        }
}
